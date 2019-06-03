<#
.EXAMPLE
    This example shows how to disable the MD5 hash.
#>

Configuration Example
{
    param(
    )

    Import-DscResource -ModuleName SChannelDsc

    node localhost {
        Hash DisableMD5
        {
            Cipher = "MD5"
            Ensure = "Absent"
        }
    }
}
