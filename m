Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.reverze.net ([82.161.88.7] helo=fsm.reverze.net)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WWKDV-0006e3-3N
 for barebox@lists.infradead.org; Sat, 05 Apr 2014 06:36:38 +0000
Mime-Version: 1.0 (1.0)
From: Michel Stam <michel@reverze.net>
In-Reply-To: <20140405031120.GA15426@ns203013.ovh.net>
Date: Sat, 5 Apr 2014 08:36:13 +0200
Message-Id: <2CD5D8A7-71BA-4045-A246-3AB560CFC8A8@reverze.net>
References: <53316480.2030103@reverze.net>
 <20140405031120.GA15426@ns203013.ovh.net>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0062208177373503016=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] x86: Add support for IDE on the legacy I/O ports
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>


--===============0062208177373503016==
Content-Type: multipart/signed;
	boundary=Apple-Mail-4E86DBDF-2048-46F4-96BA-BFC4F583F182;
	protocol="application/pkcs7-signature";
	micalg=sha1
Content-Transfer-Encoding: 7bit


--Apple-Mail-4E86DBDF-2048-46F4-96BA-BFC4F583F182
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hello Jean,

Forget about the ifdefs; my patches there were meant to let the code compile=
 depending on what was selected in configuration, (this was not the case pre=
viously), but the whole thing became an ifdef mess in the process. I've comp=
letely rewritten this, splitting initialisation over multiple files which ar=
e selected from the Makefile.

>> diff --git a/include/ata_drive.h b/include/ata_drive.h
>> index 6d6cca4..44073cb 100644
>> --- a/include/ata_drive.h
>> +++ b/include/ata_drive.h
>> @@ -119,6 +119,7 @@ struct ata_ioports {
>>    /* hard reset line handling */
>>    void (*reset)(int);    /* true: assert reset, false: de-assert reset *=
/
>>    int dataif_be;    /* true if 16 bit data register is big endian */
>> +    int mmio; /* true if memory-mapped io */
> so use a boolean
look at the line immediately preceeding the mmio line: I'm following the sty=
le of the original driver. I was not intending to do a code cleanup of the d=
river, the goal is to get it to work on the x86.

>> b/arch/x86/boards/x86_generic/generic_pc.c
>> @@ -27,6 +27,10 @@
>> #include <ns16550.h>
>> #include <linux/err.h>
>> +#ifdef CONFIG_DISK_INTF_PLATFORM_IDE
> why the ifdef?
i discussed that in an email last night; it is a convention I use to prevent=
 badly behaving header files from breaking compiles.

>> secondary_ide_device =3D {
>> +    .name =3D "ide_intf",
>> +    .id =3D 1,
>> +    .platform_data =3D &ide_plat,
>> +    .resource =3D secondary_ide_resources,
>> +    .num_resources =3D ARRAY_SIZE( secondary_ide_resources ),
>> +};
> please create the device on the fly


Again I'm following the style of the original driver; the serial ports in th=
e generic_pc.c behave identically.=20

Seems to me that these files were due for an overhaul, given the number of c=
omments I get by following the style of the original driver...

Ive found the perl script that checks patches, next version of the patches w=
ill have spacing etc fixed as well, i want to test that everything works fir=
st.

Michel Stam


> On 5 apr. 2014, at 05:11, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcros=
oft.com> wrote:
>=20
>> On 12:12 Tue 25 Mar     , Michel Stam wrote:
>>=20
>> ---
>> arch/x86/boards/x86_generic/generic_pc.c | 71 ++++++++++++++++++++++++
>> drivers/ata/ide-sff.c                    | 94
>> ++++++++++++++++++++++++++------
>> drivers/ata/intf_platform_ide.c          | 14 ++++-
>> include/ata_drive.h                      |  1 +
>> 4 files changed, 161 insertions(+), 19 deletions(-)
>>=20
>> diff --git a/arch/x86/boards/x86_generic/generic_pc.c
>> b/arch/x86/boards/x86_generic/generic_pc.c
>> index 74a7224..6152afc 100644
>> --- a/arch/x86/boards/x86_generic/generic_pc.c
>> +++ b/arch/x86/boards/x86_generic/generic_pc.c
>> @@ -27,6 +27,10 @@
>> #include <ns16550.h>
>> #include <linux/err.h>
>> +#ifdef CONFIG_DISK_INTF_PLATFORM_IDE
> why the ifdef?
>> +#include <platform_ide.h>
>> +#endif
>> +
>> /*
>>  * These datas are from the MBR, created by the linker and filled by the
>>  * setup tool while installing barebox on the disk drive
>> @@ -41,6 +45,55 @@ extern uint8_t pers_env_drive;
>>  */
>> #define PATCH_AREA_PERS_SIZE_UNUSED 0x000
>> +#ifdef CONFIG_DISK_INTF_PLATFORM_IDE
>> +
>> +static struct ide_port_info ide_plat =3D {
>> +    .ioport_shift =3D 0,
>> +    .dataif_be =3D 0,
>> +};
>> +
>> +static struct resource primary_ide_resources[] =3D {
>> +    {
>> +        .name =3D "base",
>> +        .start =3D 0x1f0,
>> +        .end =3D  0x1f8,
>> +        .flags =3D IORESOURCE_IO
>> +    },
>> +    {
>> +        .name =3D "alt",
>> +        .start =3D 0x3f6,
>> +    w    .end =3D  0x3f8,
>> +        .flags =3D IORESOURCE_IO
>> +    }
>> +};
>> +
>> +static struct resource secondary_ide_resources[] =3D {
>> +    {
>> +        .name =3D "base",
>> +        .start =3D 0x170,
>> +        .end =3D  0x177,
>> +        .flags =3D IORESOURCE_IO
>> +    },
>> +};
>> +
>> +static struct device_d primary_ide_device =3D {
>> +    .name =3D "ide_intf",
>> +    .id =3D 0,
>> +    .platform_data =3D &ide_plat,
>> +    .resource =3D primary_ide_resources,
>> +    .num_resources =3D ARRAY_SIZE( primary_ide_resources ),
>> +};
>> +
>> +static struct device_d secondary_ide_device =3D {
>> +    .name =3D "ide_intf",
>> +    .id =3D 1,
>> +    .platform_data =3D &ide_plat,
>> +    .resource =3D secondary_ide_resources,
>> +    .num_resources =3D ARRAY_SIZE( secondary_ide_resources ),
>> +};
> please create the device on the fly
>> +
>> +#endif /* CONFIG_DISK_INTF_PLATFORM_IDE */
>> +
>> static int devices_init(void)
>> {
>>    struct cdev *cdev;
>> @@ -48,9 +101,26 @@ static int devices_init(void)
>>    /* extended memory only */
>>    add_mem_device("ram0", 0x0, bios_get_memsize() << 10,
>>               IORESOURCE_MEM_WRITEABLE);
>> +#ifdef CONFIG_DISK_BIOS
> if (IS_ENABLED(CONFxx))
>>    add_generic_device("biosdrive", DEVICE_ID_DYNAMIC, NULL, 0, 0,
>> IORESOURCE_MEM,
>>            NULL);
>> +#endif
>> +
>> +#ifdef CONFIG_DISK_INTF_PLATFORM_IDE
> ditto and no space after ( and before )
>> +    platform_device_register( &primary_ide_device );
>> +    platform_device_register( &secondary_ide_device );
>> +
>> +    if (pers_env_size !=3D PATCH_AREA_PERS_SIZE_UNUSED) {
>> +        cdev =3D devfs_add_partition("ata0",
>> +                pers_env_storage * 512,
>> +                (unsigned)pers_env_size * 512,
>> +                DEVFS_PARTITION_FIXED, "env0");
>> +        printf("Partition: %ld\n", IS_ERR(cdev) ? PTR_ERR(cdev) : 0);
>> +    } else
>> +        printf("No persistent storage defined\n");
>> +#endif /* CONFIG_DISK_INTF_PLATFORM_IDE */
>> +#ifdef CONFIG_DISK_BIOS
>>    if (pers_env_size !=3D PATCH_AREA_PERS_SIZE_UNUSED) {
>>        cdev =3D devfs_add_partition("biosdisk0",
>>                pers_env_storage * 512,
>> @@ -59,6 +129,7 @@ static int devices_init(void)
>>        printf("Partition: %ld\n", IS_ERR(cdev) ? PTR_ERR(cdev) : 0);
>>    } else
>>        printf("No persistent storage defined\n");
>> +#endif
>>          return 0;
>> }
>> diff --git a/drivers/ata/ide-sff.c b/drivers/ata/ide-sff.c
>> index 3d5932e..809a129 100644
>> --- a/drivers/ata/ide-sff.c
>> +++ b/drivers/ata/ide-sff.c
>> @@ -15,13 +15,71 @@
>> #define DISK_SLAVE 1
>>  /**
>> + * Read a byte from the ATA controller
>> + * @param ide IDE port structure
>> + * @param addr Register adress
>> + * @return Register's content
>> + */
>> +static inline uint8_t ata_rd_byte(struct ide_port *ide, void
>> __iomem *addr )
>> +{
>> +    if (!ide->io.mmio)
>> +        return (uint8_t) inb((int) addr);
>> +    else
>> +        return readb(addr);
>> +}
>> +
>> +/**
>> + * Write a byte to the ATA controller
>> + * @param ide IDE port structure
>> + * @param value Value to write
>> + * @param addr Register adress
>> + * @return Register's content
>> + */
>> +static inline void ata_wr_byte(struct ide_port *ide, uint8_t value,
>> void __iomem *addr )
>> +{
>> +    if (!ide->io.mmio)
>> +        outb(value, (int) addr);
>> +    else
>> +        writeb(value,addr);
>> +}
>> +
>> +/**
>> + * Read a word from the ATA controller
>> + * @param ide IDE port structure
>> + * @param addr Register adress
>> + * @return Register's content
>> + */
>> +static inline uint16_t ata_rd_word(struct ide_port *ide, void
>> __iomem *addr )
>> +{
>> +    if (!ide->io.mmio)
>> +        return (uint16_t) inw((int) addr);
>> +    else
>> +        return readw(addr);
>> +}
>> +
>> +/**
>> + * Write a word to the ATA controller
>> + * @param ide IDE port structure
>> + * @param value Value to write
>> + * @param addr Register adress
>> + * @return Register's content
>> + */
>> +static inline void ata_wr_word(struct ide_port *ide, uint16_t
>> value, void __iomem *addr )
>> +{
>> +    if (!ide->io.mmio)
>> +        outw(value, (int) addr);
>> +    else
>> +        writew(value,addr);
>> +}
>> +
>> +/**
>>  * Read the status register of the ATA drive
>>  * @param io Register file
>>  * @return Register's content
>>  */
>> static uint8_t ata_rd_status(struct ide_port *ide)
>> {
>> -    return readb(ide->io.status_addr);
>> +    return ata_rd_byte(ide,ide->io.status_addr);
>> }
>>  /**
>> @@ -83,12 +141,12 @@ static int ata_set_lba_sector(struct ide_port
>> *ide, unsigned drive, uint64_t num
>>    if (num > 0x0FFFFFFF || drive > 1)
>>        return -EINVAL;
>> -    writeb(0xA0 | LBA_FLAG | drive << 4 | num >> 24, ide->io.device_addr=
);
>> -    writeb(0x00, ide->io.error_addr);
>> -    writeb(0x01, ide->io.nsect_addr);
>> -    writeb(num, ide->io.lbal_addr);    /* 0 ... 7 */
>> -    writeb(num >> 8, ide->io.lbam_addr); /* 8 ... 15 */
>> -    writeb(num >> 16, ide->io.lbah_addr); /* 16 ... 23 */
>> +    ata_wr_byte(ide, 0xA0 | LBA_FLAG | drive << 4 | num >> 24,
>> ide->io.device_addr);
>> +    ata_wr_byte(ide, 0x00, ide->io.error_addr);
>> +    ata_wr_byte(ide, 0x01, ide->io.nsect_addr);
>> +    ata_wr_byte(ide, num, ide->io.lbal_addr);    /* 0 ... 7 */
>> +    ata_wr_byte(ide, num >> 8, ide->io.lbam_addr); /* 8 ... 15 */
>> +    ata_wr_byte(ide, num >> 16, ide->io.lbah_addr); /* 16 ... 23 */
>>      return 0;
>> }
>> @@ -107,7 +165,7 @@ static int ata_wr_cmd(struct ide_port *ide, uint8_t c=
md)
>>    if (rc !=3D 0)
>>        return rc;
>> -    writeb(cmd, ide->io.command_addr);
>> +    ata_wr_byte(ide, cmd, ide->io.command_addr);
>>    return 0;
>> }
>> @@ -118,7 +176,7 @@ static int ata_wr_cmd(struct ide_port *ide,
>> uint8_t cmd)
>>  */
>> static void ata_wr_dev_ctrl(struct ide_port *ide, uint8_t val)
>> {
>> -    writeb(val, ide->io.ctl_addr);
>> +    ata_wr_byte(ide, val, ide->io.ctl_addr);
>> }
>>  /**
>> @@ -133,10 +191,10 @@ static void ata_rd_sector(struct ide_port
>> *ide, void *buf)
>>      if (ide->io.dataif_be) {
>>        for (; u > 0; u--)
>> -            *b++ =3D be16_to_cpu(readw(ide->io.data_addr));
>> +            *b++ =3D be16_to_cpu(ata_rd_word(ide, ide->io.data_addr));
>>    } else {
>>        for (; u > 0; u--)
>> -            *b++ =3D le16_to_cpu(readw(ide->io.data_addr));
>> +            *b++ =3D le16_to_cpu(ata_rd_word(ide, ide->io.data_addr));
>>    }
>> }
>> @@ -152,10 +210,10 @@ static void ata_wr_sector(struct ide_port
>> *ide, const void *buf)
>>      if (ide->io.dataif_be) {
>>        for (; u > 0; u--)
>> -            writew(cpu_to_be16(*b++), ide->io.data_addr);
>> +            ata_wr_word(ide, cpu_to_be16(*b++), ide->io.data_addr);
>>    } else {
>>        for (; u > 0; u--)
>> -            writew(cpu_to_le16(*b++), ide->io.data_addr);
>> +            ata_wr_word(ide, cpu_to_le16(*b++), ide->io.data_addr);
>>    }
>> }
>> @@ -169,10 +227,10 @@ static int ide_read_id(struct ata_port *port,
>> void *buf)
>>    struct ide_port *ide =3D to_ata_drive_access(port);
>>    int rc;
>> -    writeb(0xA0, ide->io.device_addr);    /* FIXME drive */
>> -    writeb(0x00, ide->io.lbal_addr);
>> -    writeb(0x00, ide->io.lbam_addr);
>> -    writeb(0x00, ide->io.lbah_addr);
>> +    ata_wr_byte(ide, 0xA0, ide->io.device_addr);    /* FIXME drive */
>> +    ata_wr_byte(ide, 0x00, ide->io.lbal_addr);
>> +    ata_wr_byte(ide, 0x00, ide->io.lbam_addr);
>> +    ata_wr_byte(ide, 0x00, ide->io.lbah_addr);
>>      rc =3D ata_wr_cmd(ide, ATA_CMD_ID_ATA);
>>    if (rc !=3D 0)
>> @@ -327,6 +385,8 @@ int ide_port_register(struct ide_port *ide)
>>    ide->port.ops =3D &ide_ops;
>>      ret =3D ata_port_register(&ide->port);
>> +    if ( !ret )
>> +        ata_port_detect(&ide->port);
>>      if (ret)
>>        free(ide);
>> diff --git a/drivers/ata/intf_platform_ide.c
>> b/drivers/ata/intf_platform_ide.c
>> index 8ae0f05..24f78f4 100644
>> --- a/drivers/ata/intf_platform_ide.c
>> +++ b/drivers/ata/intf_platform_ide.c
>> @@ -89,8 +89,18 @@ static int platform_ide_probe(struct device_d *dev)
>>    }
>>      ide =3D xzalloc(sizeof(*ide));
>> -    reg_base =3D dev_request_mem_region(dev, 0);
>> -    alt_base =3D dev_request_mem_region(dev, 1);
>> +    reg_base =3D dev_request_region(dev, 0, IORESOURCE_MEM);
> please check your coding style
>> +    if (reg_base !=3D NULL)
>> +    {
>> +        alt_base =3D dev_request_region(dev, 1, IORESOURCE_MEM);
>> +        ide->io.mmio =3D 1;
>> +    }
>> +    else
>> +    {
>> +        reg_base =3D dev_request_region(dev, 0, IORESOURCE_IO);
>> +        alt_base =3D dev_request_region(dev, 1, IORESOURCE_IO);
>> +    }
>> +
>>    platform_ide_setup_port(reg_base, alt_base, &ide->io,
>> pdata->ioport_shift);
>>    ide->io.reset =3D pdata->reset;
>>    ide->io.dataif_be =3D pdata->dataif_be;
>> diff --git a/include/ata_drive.h b/include/ata_drive.h
>> index 6d6cca4..44073cb 100644
>> --- a/include/ata_drive.h
>> +++ b/include/ata_drive.h
>> @@ -119,6 +119,7 @@ struct ata_ioports {
>>    /* hard reset line handling */
>>    void (*reset)(int);    /* true: assert reset, false: de-assert reset *=
/
>>    int dataif_be;    /* true if 16 bit data register is big endian */
>> +    int mmio; /* true if memory-mapped io */
> so use a boolean
>> };
>>  struct ata_port;
>> --=20
>> 1.8.4
>>=20
>>=20
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox

--Apple-Mail-4E86DBDF-2048-46F4-96BA-BFC4F583F182
Content-Type: application/pkcs7-signature;
	name=smime.p7s
Content-Disposition: attachment;
	filename=smime.p7s
Content-Transfer-Encoding: base64

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIUaDCCBjQw
ggQcoAMCAQICAR4wDQYJKoZIhvcNAQEFBQAwfTELMAkGA1UEBhMCSUwxFjAUBgNVBAoTDVN0YXJ0
Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENlcnRpZmljYXRlIFNpZ25pbmcxKTAn
BgNVBAMTIFN0YXJ0Q29tIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MB4XDTA3MTAyNDIxMDE1NVoX
DTE3MTAyNDIxMDE1NVowgYwxCzAJBgNVBAYTAklMMRYwFAYDVQQKEw1TdGFydENvbSBMdGQuMSsw
KQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZpY2F0ZSBTaWduaW5nMTgwNgYDVQQDEy9TdGFy
dENvbSBDbGFzcyAxIFByaW1hcnkgSW50ZXJtZWRpYXRlIENsaWVudCBDQTCCASIwDQYJKoZIhvcN
AQEBBQADggEPADCCAQoCggEBAMcJg8zOLdgasSmkLhOrlr6KMoOMpohBllVHrdRvEg/q6r8jR+EK
75xCGhR8ToREoqe7zM9/UnC6TS2y9UKTpT1v7RSMzR0t6ndl0TWBuUr/UXBhPk+Kmy7bI4yW4urC
+y7P3/1/X7U8ocb8VpH/Clt+4iq7nirMcNh6qJR+xjOhV+VHzQMALuGYn5KZmc1NbJQYclsGkDxD
z2UbFqE2+6vIZoL+jb9x4Pa5gNf1TwSDkOkikZB1xtB4ZqtXThaABSONdfmv/Z1pua3FYxnCFmdr
/+N2JLKutIxMYqQOJebr/f/h5t95m4JgrM3Y/w7YX9d7YAL9jvN4SydHsU6n65cCAwEAAaOCAa0w
ggGpMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgEGMB0GA1UdDgQWBBRTcu2SnODaywFc
fH6WNU7y1LhRgjAfBgNVHSMEGDAWgBROC+8apEBbpRdphzDKNGhD0EGu8jBmBggrBgEFBQcBAQRa
MFgwJwYIKwYBBQUHMAGGG2h0dHA6Ly9vY3NwLnN0YXJ0c3NsLmNvbS9jYTAtBggrBgEFBQcwAoYh
aHR0cDovL3d3dy5zdGFydHNzbC5jb20vc2ZzY2EuY3J0MFsGA1UdHwRUMFIwJ6AloCOGIWh0dHA6
Ly93d3cuc3RhcnRzc2wuY29tL3Nmc2NhLmNybDAnoCWgI4YhaHR0cDovL2NybC5zdGFydHNzbC5j
b20vc2ZzY2EuY3JsMIGABgNVHSAEeTB3MHUGCysGAQQBgbU3AQIBMGYwLgYIKwYBBQUHAgEWImh0
dHA6Ly93d3cuc3RhcnRzc2wuY29tL3BvbGljeS5wZGYwNAYIKwYBBQUHAgEWKGh0dHA6Ly93d3cu
c3RhcnRzc2wuY29tL2ludGVybWVkaWF0ZS5wZGYwDQYJKoZIhvcNAQEFBQADggIBAAqDCH14qywG
XLhjjF6uHLkjd02hcdh9hrw+VUsv+q1eeQWB21jWj3kJ96AUlPCoEGZ/ynJNScWy6QMVQjbbMXlt
UfO4n4bGGdKo3awPWp61tjAFgraLJgDk+DsSvUD6EowjMTNx25GQgyYJ5RPIzKKR9tQW8gGK+2+R
HxkUCTbYFnL6kl8Ch507rUdPPipJ9CgJFws3kDS3gOS5WFMxcjO5DwKfKSETEPrHh7p5shuuNktv
sv6hxHTLhiMKX893gxdT3XLS9OKmCv87vkINQcNEcIIoFWbP9HORz9v3vQwR4e3ksLc2JZOAFK+s
sS5XMEoznzpihEP0PLc4dCBYjbvSD7kxgDwZ+Aj8Q9PkbvE9sIPP7ON0fz095HdThKjiVJe6vofq
+n6b1NBc8XdrQvBmunwxD5nvtTW4vtN6VY7mUCmxsCieuoBJ9OlqmsVWQvifIYf40dJPZkk9YgGT
zWLpXDSfLSplbY2LL9C9U0ptvjcDjefLTvqSFc7tw1sEhF0n/qpA2r0GpvkLRDmcSwVyPvmjFBGq
Up/pNy8ZuPGQmHwFi2/14+xeSUDG2bwnsYJQG2EdJCB6luQ57GEnTA/yKZSTKI8dDQa8Sd3zfXb1
9mOgSF0bBdXbuKhEpuP9wirslFe6fQ1t5j5R0xi72MZ8ikMu1RQZKCyDbMwazlHiMIIGXzCCBUeg
AwIBAgIDCWkOMA0GCSqGSIb3DQEBBQUAMIGMMQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRD
b20gTHRkLjErMCkGA1UECxMiU2VjdXJlIERpZ2l0YWwgQ2VydGlmaWNhdGUgU2lnbmluZzE4MDYG
A1UEAxMvU3RhcnRDb20gQ2xhc3MgMSBQcmltYXJ5IEludGVybWVkaWF0ZSBDbGllbnQgQ0EwHhcN
MTQwMzI0MDkzNzUxWhcNMTUwMzI1MDkyMDI1WjBhMRkwFwYDVQQNExBrY08xVFp2YlB1VHJwckU4
MQswCQYDVQQGEwJOTDEUMBIGA1UEAxMLTWljaGVsIFN0YW0xITAfBgkqhkiG9w0BCQEWEm1pY2hl
bEByZXZlcnplLm5ldDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKionYnufAXXVz55
IVqM4hUGc32XO6pXeHy2wb85GLs5UFnLVwqt+SsZWkAzGh2yb+ig59tamcw67ugX+6i+ya9UVD9E
lEPAYK3A5yTdM2Umg1944YiZjrV01NuHhrRPJTATZwmIqFCjqYKGaCt6xV5R/bEpSmetM66JshnV
beRnMRzzocNuUkTiJqZu6mZRGcORfCDMUnfP7Sevzq9mCMKQM4q0tiMOK5MHdnfXnDhj4VJGuOIz
TqnMvivIENboKNtbJju4Yjmorm7kJ435fWlcBa0k2TyFrT+hkxooh2cwTclH6I1Udh614RPbAG43
3Me9LzZNNkXX053VGwzKyyUCAwEAAaOCAvIwggLuMAkGA1UdEwQCMAAwCwYDVR0PBAQDAgSwMB0G
A1UdJQQWMBQGCCsGAQUFBwMCBggrBgEFBQcDBDAdBgNVHQ4EFgQUNr7gvLJAY8/w3wL6MIaqa0bw
6fwwHwYDVR0jBBgwFoAUU3Ltkpzg2ssBXHx+ljVO8tS4UYIwHQYDVR0RBBYwFIESbWljaGVsQHJl
dmVyemUubmV0MIIBZgYDVR0gBIIBXTCCAVkwggFVBgsrBgEEAYG1NwECAzCCAUQwLgYIKwYBBQUH
AgEWImh0dHA6Ly93d3cuc3RhcnRzc2wuY29tL3BvbGljeS5wZGYwggEQBggrBgEFBQcCAjCCAQIw
JxYgU3RhcnRDb20gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkwAwIBARqB1lRoaXMgY2VydGlmaWNh
dGUgd2FzIGlzc3VlZCBhY2NvcmRpbmcgdG8gdGhlIFN0YXJ0U1NMIFdlYi1vZi1UcnVzdCBDb21t
dW5pdHkgVmFsaWRhdGlvbiByZXF1aXJlbWVudHMgb2YgdGhlIFN0YXJ0Q29tIENBIHBvbGljeSwg
cmVsaWFuY2Ugb25seSBmb3IgdGhlIGludGVuZGVkIHB1cnBvc2UgaW4gY29tcGxpYW5jZSBvZiB0
aGUgcmVseWluZyBwYXJ0eSBvYmxpZ2F0aW9ucy4wNgYDVR0fBC8wLTAroCmgJ4YlaHR0cDovL2Ny
bC5zdGFydHNzbC5jb20vY3J0dTEtY3JsLmNybDCBjgYIKwYBBQUHAQEEgYEwfzA5BggrBgEFBQcw
AYYtaHR0cDovL29jc3Auc3RhcnRzc2wuY29tL3N1Yi9jbGFzczEvY2xpZW50L2NhMEIGCCsGAQUF
BzAChjZodHRwOi8vYWlhLnN0YXJ0c3NsLmNvbS9jZXJ0cy9zdWIuY2xhc3MxLmNsaWVudC5jYS5j
cnQwIwYDVR0SBBwwGoYYaHR0cDovL3d3dy5zdGFydHNzbC5jb20vMA0GCSqGSIb3DQEBBQUAA4IB
AQCN6w5arF+jboDXRlVPluqz/vHrmIY879dUxp4eLAfMCeL1efdrTcT8pOLSbJO80EQy460rDFOQ
2pbLKXkM9PfkcO/VKGG9CYWVjAFe2uyinxrtUE3EkfwLOleiLfFdDpSSQUfS1ns3nfrTU59wVKUa
fg+j4u03gY78SI6WmPOWiQSQtHR8/ZIn1wz0bnI/2713PJgA1d9AgrZx13rib1fI7jQQwsJVWFG1
B6acc05BmlIxtcp5NEwiJQmsT4hsRAtQvNbM4ivGBsZ7JocUe3Gqb4TBjv7/03Rwfv2WhemEVSAM
GgVGCLNIouhhHSMot1LEzfNZyUaIL3uPcy5z34zCMIIHyTCCBbGgAwIBAgIBATANBgkqhkiG9w0B
AQUFADB9MQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRkLjErMCkGA1UECxMiU2Vj
dXJlIERpZ2l0YWwgQ2VydGlmaWNhdGUgU2lnbmluZzEpMCcGA1UEAxMgU3RhcnRDb20gQ2VydGlm
aWNhdGlvbiBBdXRob3JpdHkwHhcNMDYwOTE3MTk0NjM2WhcNMzYwOTE3MTk0NjM2WjB9MQswCQYD
VQQGEwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRkLjErMCkGA1UECxMiU2VjdXJlIERpZ2l0YWwg
Q2VydGlmaWNhdGUgU2lnbmluZzEpMCcGA1UEAxMgU3RhcnRDb20gQ2VydGlmaWNhdGlvbiBBdXRo
b3JpdHkwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDBiNsJvGxGfHiflXu1M5DycmLW
wTYgIiRezul38kMKogZkpMyONvg45iPwbm2xPN1yo4UcodM9tDMr0y+v/uqwQVlntsQGfQqedIXW
eUyAN3rfOQVSWff0G0ZDpNKFhdLDcfN1YjS6LIp/Ho/u7TTQEceWzVI9ujPW3U3eCztKS5/CJi/6
tRYccjV3yjxd5srhJosaNnZcAdt0FCX+7bWgiA/deMotHweXMAEtcnn6RtYTKqi5pquDSR3l8u/d
5AGOGAqPY1MWhWKpDhk6zLVmpsJrdAfkK+F2PrRt2PZE4XNiHzvEvqBTViVsUQn3qqvKv3b9bZvz
ndu/PWa8DFaqr5hIlTpL36dYUNk4dalb6kMMAv+Z6+hsTXBbKWWc3apdzK8BMewM69KN6Oqce+Zu
9ydmDBpI125C4z/eIT574Q1w+2OqqGwaVLRcJXrJosmLFqa7LH4XXgVNWG4SHQHuEhANxjJ/GP/8
9PrNbpHoNkm+Gkhpi8KWTRoSsmkXwQqQ1vp5Iki/untp+HDH+no32NgN0nZPV/+Qt+OR0t3vwmC3
Zzrd/qqc8NSLf3Iizsafl7b4r4qgEKjZ+xjGtrVcUjyJthkqcwEKDwOzEmDyei+B26Nu/yYwl/WL
3YlXtq09s68rxbd2AvCl1iuahhQqcvbjM4xdCUsT37uMdBNSSwIDAQABo4ICUjCCAk4wDAYDVR0T
BAUwAwEB/zALBgNVHQ8EBAMCAa4wHQYDVR0OBBYEFE4L7xqkQFulF2mHMMo0aEPQQa7yMGQGA1Ud
HwRdMFswLKAqoCiGJmh0dHA6Ly9jZXJ0LnN0YXJ0Y29tLm9yZy9zZnNjYS1jcmwuY3JsMCugKaAn
hiVodHRwOi8vY3JsLnN0YXJ0Y29tLm9yZy9zZnNjYS1jcmwuY3JsMIIBXQYDVR0gBIIBVDCCAVAw
ggFMBgsrBgEEAYG1NwEBATCCATswLwYIKwYBBQUHAgEWI2h0dHA6Ly9jZXJ0LnN0YXJ0Y29tLm9y
Zy9wb2xpY3kucGRmMDUGCCsGAQUFBwIBFilodHRwOi8vY2VydC5zdGFydGNvbS5vcmcvaW50ZXJt
ZWRpYXRlLnBkZjCB0AYIKwYBBQUHAgIwgcMwJxYgU3RhcnQgQ29tbWVyY2lhbCAoU3RhcnRDb20p
IEx0ZC4wAwIBARqBl0xpbWl0ZWQgTGlhYmlsaXR5LCByZWFkIHRoZSBzZWN0aW9uICpMZWdhbCBM
aW1pdGF0aW9ucyogb2YgdGhlIFN0YXJ0Q29tIENlcnRpZmljYXRpb24gQXV0aG9yaXR5IFBvbGlj
eSBhdmFpbGFibGUgYXQgaHR0cDovL2NlcnQuc3RhcnRjb20ub3JnL3BvbGljeS5wZGYwEQYJYIZI
AYb4QgEBBAQDAgAHMDgGCWCGSAGG+EIBDQQrFilTdGFydENvbSBGcmVlIFNTTCBDZXJ0aWZpY2F0
aW9uIEF1dGhvcml0eTANBgkqhkiG9w0BAQUFAAOCAgEAFmyZ9GYMNPXQhV59CuzaEE44HF7fpiUF
S5Eyweg78T3dRAlbB0mKKctmArexmvclmAk8jhvh3TaHK0u7aNM5Zj2gJsfyOZEdUauCe37Vzlrk
4gNXcGmXCPleWKYK34wGmkUWFjgKXlf2Ysd6AgXmvB618p70qSmD+LIU424oh0TDkBreOKk8rENN
ZEXO3SipXPJzewT4F+irsfMuXGRuczE6Eri8sxHkfY+BUZo7jYn0TZNmezwD7dOaHZrzZVD1oNB1
ny+v8OqCQ5j4aZyJecRDjkZy42Q2Eq/3JR44iZB3fsNrarnDy0RLrHiQi+fHLB5LEUTINFInzQpd
n4XBidUaePKVEFMy3YCEZnXZtWgo+2EuvoSoOMCZEoalHmdkrQYuL6lwhceWD3yJZfWOQ1QOq92l
gDmUYMA0yZZwLKMS9R9Ie70cfmu3nZD0Ijuu+PwqyvqCUqDvr0tVk+vBtfAii6w0TiYiBKGHLHVK
t+V9E9e4DGTANtLJL4YSjCMJwRuCO3NJo2pXh5Tl1njFmUNj403gdy3hZZlyaQQaRwnmDwFWJPsf
vw55qVguucQJAX6Vum0ABj6y6koQOdjQK/W/7HW/lwLFCRsI3FU34oH7N4RDYiDK51ZLZer+bMEk
kyShNOsF/5oirpt9P/FlUQqmMGqz9IgcgA38corog14xggNvMIIDawIBATCBlDCBjDELMAkGA1UE
BhMCSUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENl
cnRpZmljYXRlIFNpZ25pbmcxODA2BgNVBAMTL1N0YXJ0Q29tIENsYXNzIDEgUHJpbWFyeSBJbnRl
cm1lZGlhdGUgQ2xpZW50IENBAgMJaQ4wCQYFKw4DAhoFAKCCAa8wGAYJKoZIhvcNAQkDMQsGCSqG
SIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTQwNDA1MDYzNjE0WjAjBgkqhkiG9w0BCQQxFgQUTL00
PMfVtpMcNlBLbQbzqJJR7BUwgaUGCSsGAQQBgjcQBDGBlzCBlDCBjDELMAkGA1UEBhMCSUwxFjAU
BgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENlcnRpZmljYXRl
IFNpZ25pbmcxODA2BgNVBAMTL1N0YXJ0Q29tIENsYXNzIDEgUHJpbWFyeSBJbnRlcm1lZGlhdGUg
Q2xpZW50IENBAgMJaQ4wgacGCyqGSIb3DQEJEAILMYGXoIGUMIGMMQswCQYDVQQGEwJJTDEWMBQG
A1UEChMNU3RhcnRDb20gTHRkLjErMCkGA1UECxMiU2VjdXJlIERpZ2l0YWwgQ2VydGlmaWNhdGUg
U2lnbmluZzE4MDYGA1UEAxMvU3RhcnRDb20gQ2xhc3MgMSBQcmltYXJ5IEludGVybWVkaWF0ZSBD
bGllbnQgQ0ECAwlpDjANBgkqhkiG9w0BAQEFAASCAQBak5Ye70wPrDK1jbDtzH+XvNPsJZjyNQK0
LlvtIFiMX5QMWbqjajfXm4VvX0CuvOJs4nue+THxeu1hF7Kg06NwdvnGFpo4Cc+PBJ28AKNfR/UO
pKWCzB7adHnISuhVwdrmpjRamnbtl4sH/6mWRuuoyFzmDkgM9NTwBWfoVY9lLSEGdqYUrxbsxFGk
fp9K2+OS2LOWg2oMCyReT9Q8AxnEcLny7AymkOxL7RlUzVdOaudV99twQshKnZQD8MVWAmDXyDMt
8jN84ZL0OjGk48l9vPCE19S/WT6nn8xrsR64+34SobuDBRixgIVDy240hvdQUN7hWoAtCQ3QJ7bE
eQlSAAAAAAAA
--Apple-Mail-4E86DBDF-2048-46F4-96BA-BFC4F583F182--


--===============0062208177373503016==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0062208177373503016==--
