Delivery-date: Sun, 16 Oct 2022 15:48:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ok40R-00Agdf-Tg
	for lore@lore.pengutronix.de; Sun, 16 Oct 2022 15:48:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ok40O-0008IJ-II
	for lore@pengutronix.de; Sun, 16 Oct 2022 15:48:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e7Nns7CNMk5GKzhKG1DqNcIbPMAXY5waw7BL+pU2vDY=; b=eh3xEAR2whqAdQR7u6gahw6o5Y
	6vZc+9VVKdoI3ae7lTFHwIknta0/bK1FHMwHRU8tjdV6W2LWOJZBx5ebw48s7g5/6EEEocscUp6vX
	COaUDVqvVAnvZ8K2YJYh+PqAVFwYYhTcGx0kcqxIuuoIaNLSgesur70ISFsaFTQBsemLG9KoVTAXg
	xfAUXjQLQk0ImKOfnXEV7LlvOuYX8kaQmqFNiIEVyN7S9NxTA/9eF2AXk/8h7Q/k3YV/lsgAzI/Vx
	7QdxqEy6z7UDcevAUWgd47FMVRPHSqvW6IZbTaUJA2wp0jVaf5MXTdn35/hDOntC8beQ/fYesS+br
	OP16dPeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ok3yY-001eKz-IG; Sun, 16 Oct 2022 13:46:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ok3yS-001eJg-IU
	for barebox@lists.infradead.org; Sun, 16 Oct 2022 13:46:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ok3yN-0008Fa-7i; Sun, 16 Oct 2022 15:46:35 +0200
Message-ID: <cfc48570-0af5-e4e3-9d45-c6efdf5f4ef6@pengutronix.de>
Date: Sun, 16 Oct 2022 15:46:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Adrian Negreanu <adrian.negreanu@nxp.com>, barebox@lists.infradead.org
References: <20221010073616.673492-1-adrian.negreanu@nxp.com>
 <20221011171106.1151441-1-adrian.negreanu@nxp.com>
Content-Language: en-US
In-Reply-To: <20221011171106.1151441-1-adrian.negreanu@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221016_064640_974879_357F55FA 
X-CRM114-Status: GOOD (  57.87  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] video: add support for qemu ramfb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Adrian,

On 11.10.22 19:11, Adrian Negreanu wrote:
> The driver has Kconfig-urable width, height and color format.
> Tested with:
> 	qemu-system-riscv32 -M virt -vga none -device ramfb -kernel images/barebox-dt-2nd.img

Thanks for your patch.
 
> Signed-off-by: Adrian Negreanu <adrian.negreanu@nxp.com>
> ---
>  drivers/video/Kconfig  |  39 ++++++
>  drivers/video/Makefile |   1 +
>  drivers/video/ramfb.c  | 308 +++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 348 insertions(+)
>  create mode 100644 drivers/video/ramfb.c
> 
> diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
> index a20b7bbee9..ccea930362 100644
> --- a/drivers/video/Kconfig
> +++ b/drivers/video/Kconfig
> @@ -123,6 +123,45 @@ config DRIVER_VIDEO_SIMPLEFB
>  	  Add support for setting up the kernel's simple framebuffer driver
>  	  based on the active barebox framebuffer.
>  
> +config DRIVER_VIDEO_RAMFB
> +	bool "QEMU RamFB support"
> +	depends on OFTREE
> +	help
> +	  Add support for setting up a QEMU RamFB driver.
> +
> +if DRIVER_VIDEO_RAMFB
> +
> +config DRIVER_VIDEO_RAMFB_WIDTH
> +	int "Width"
> +	default 800
> +	help
> +	  Set the RamFB width in pixels.
> +
> +config DRIVER_VIDEO_RAMFB_HEIGHT
> +	int "Height"
> +	default 600
> +	help
> +	  Set the RamFB height in pixels.
> +
> +choice
> +	prompt "RamFB color format"
> +	default DRIVER_VIDEO_RAMFB_FORMAT_XRGB8888
> +	help
> +	  Set the RamFB color format.
> +
> +config DRIVER_VIDEO_RAMFB_FORMAT_XRGB8888
> +	bool "XRGB8888 (32bit)"
> +
> +config DRIVER_VIDEO_RAMFB_FORMAT_RGB888
> +	bool "RGB8888 (24bit)"
> +
> +config DRIVER_VIDEO_RAMFB_FORMAT_RGB565
> +	bool "RGB565 (16bit)"

This is unusual for barebox. Normally the driver reports some
modes and a default and then the user can at runtime decide to
override it. If there's a default we could use instead and move
this configuration into the QEMU command line? Alternatively,
we could add device parameters (dev_add_param_u32 and dev_add_param_enum)
to make this modifiable at runtime. We can keep 800x600@XRGB8888 as default.

> +#define PACKED                  __attribute__((packed))

Use __packed instead.

> +#define QFW_CFG_FILE_DIR        0x19
> +#define QFW_CFG_INVALID         0xffff
> +
> +/* fw_cfg DMA commands */
> +#define QFW_CFG_DMA_CTL_ERROR   0x01
> +#define QFW_CFG_DMA_CTL_READ    0x02
> +#define QFW_CFG_DMA_CTL_SKIP    0x04
> +#define QFW_CFG_DMA_CTL_SELECT  0x08
> +#define QFW_CFG_DMA_CTL_WRITE   0x10
> +
> +#define QFW_CFG_OFFSET_DATA8     0     /* Data Register address: Base + 0 (8 bytes). */
> +#define QFW_CFG_OFFSET_DATA16    0
> +#define QFW_CFG_OFFSET_DATA32    0
> +#define QFW_CFG_OFFSET_DATA64    0
> +#define QFW_CFG_OFFSET_SELECTOR  8     /* Selector Register address: Base + 8. */
> +#define QFW_CFG_OFFSET_DMA64     16    /* DMA Address address: Base + 16 (8 bytes). */
> +#define QFW_CFG_OFFSET_DMA32     20    /* DMA Address address: Base + 16 (8 bytes). */
> +
> +
> +#define fourcc_code(a, b, c, d) ((u32)(a) | ((u32)(b) << 8) | \
> +		((u32)(c) << 16) | ((u32)(d) << 24))
> +
> +#define DRM_FORMAT_RGB565       fourcc_code('R', 'G', '1', '6') /* [15:0] R:G:B 5:6:5 little endian */
> +#define DRM_FORMAT_RGB888       fourcc_code('R', 'G', '2', '4') /* [23:0] R:G:B little endian */
> +#define DRM_FORMAT_XRGB8888     fourcc_code('X', 'R', '2', '4') /* [31:0] x:R:G:B 8:8:8:8 little endian */

We already define these in video/fourcc.h 

> +static struct fb_ops ramfb_ops;
> +
> +struct ramfb {
> +	struct fb_info info;
> +	struct fb_videomode mode;
> +};
> +
> +
> +struct ramfb_mode {
> +	const char *format;
> +	u32 drm_format;
> +	u32 bpp;
> +	struct fb_bitfield red;
> +	struct fb_bitfield green;
> +	struct fb_bitfield blue;
> +	struct fb_bitfield transp;
> +};
> +
> +
> +struct qfw_cfg_etc_ramfb {
> +	u64 addr;
> +	u32 fourcc;
> +	u32 flags;
> +	u32 width;
> +	u32 height;
> +	u32 stride;
> +} PACKED;

Use __be64, __be32 instead.

> +
> +
> +struct qfw_cfg_file {
> +	u32  size;
> +	u16  select;
> +	u16  reserved;
> +	char name[56];
> +} PACKED;

Same here: __be32, __be16

> +
> +
> +typedef struct qfw_cfg_dma {
> +	u32 control;
> +	u32 length;
> +	u64 address;
> +} PACKED qfw_cfg_dma;

Ditto.

> +
> +
> +static const struct ramfb_mode fb_mode = {
> +#if defined(CONFIG_DRIVER_VIDEO_RAMFB_FORMAT_RGB565)
> +	.format	= "r5g6b5",
> +	.drm_format = DRM_FORMAT_RGB565,
> +	.bpp	= 16,
> +	.red	= { .length = 5, .offset = 11 },
> +	.green	= { .length = 6, .offset = 5 },
> +	.blue	= { .length = 5, .offset = 0 },
> +	.transp	= { .length = 0, .offset = 0 },
> +#elif defined(CONFIG_DRIVER_VIDEO_RAMFB_FORMAT_RGB888)
> +	.format	= "r8g8b8",
> +	.drm_format = DRM_FORMAT_RGB888,
> +	.bpp	= 24,
> +	.red	= { .length = 8, .offset = 16 },
> +	.green	= { .length = 8, .offset = 8 },
> +	.blue	= { .length = 8, .offset = 0 },
> +	.transp	= { .length = 0, .offset = 0 },
> +#elif defined(CONFIG_DRIVER_VIDEO_RAMFB_FORMAT_XRGB8888)
> +	.format	= "x8r8g8b8",
> +	.drm_format = DRM_FORMAT_XRGB8888,
> +	.bpp	= 32,
> +	.red	= { .length = 8, .offset = 16 },
> +	.green	= { .length = 8, .offset = 8 },
> +	.blue	= { .length = 8, .offset = 0 },
> +	.transp	= { .length = 0, .offset = 24 },
> +#endif
> +};
> +
> +
> +static void qfw_cfg_read_entry(void __iomem *fw_cfg_base, void*address, u16 entry, u32 size)
                                                                  ^ space

> +{
> +	/*
> +	 * writing QFW_CFG_INVALID will cause read operation to resume at last
> +	 * offset, otherwise read will start at offset 0
> +	 *
> +	 * Note: on platform where the control register is MMIO, the register
> +	 * is big endian.
> +	 */
> +	if (entry != QFW_CFG_INVALID)
> +		__raw_writew(cpu_to_be16(entry), fw_cfg_base + QFW_CFG_OFFSET_SELECTOR);

ioread16be and friends would make this a bit easier to read.

> +
> +#ifdef CONFIG_64BIT
> +	while (size >= 8) {

sizeof(struct qfw_cfg_file) == 64 bytes, so it would enter this loop's body.
Yet its biggest member is a u32, so it may end up aligned on only a 32-bit boundary
on stack. This means address dereferenced below will be unaligned.

Use memcpy_fromio instead of opencoding it here. This will take care of this.

> +		*(u64*)address = __raw_readq(fw_cfg_base + QFW_CFG_OFFSET_DATA64);
> +		address += 8;
> +		size -= 8;
> +	}
> +#endif
> +	while (size >= 4) {
> +		*(u32*)address = __raw_readl(fw_cfg_base + QFW_CFG_OFFSET_DATA32);
> +		address += 4;
> +		size -= 4;
> +	}
> +	while (size >= 2) {
> +		*(u16*)address = __raw_readw(fw_cfg_base + QFW_CFG_OFFSET_DATA16);
> +		address += 2;
> +		size -= 2;
> +	}
> +	while (size >= 1) {
> +		*(u8*)address = __raw_readb(fw_cfg_base + QFW_CFG_OFFSET_DATA8);
> +		address += 1;
> +		size -= 1;
> +	}
> +}> +
> +
> +static void qfw_cfg_write_entry(void __iomem *fw_cfg_base, void*address, u16 entry, u32 size)
> +{
> +	qfw_cfg_dma acc;

I feel a bit uneasy about doing DMA to the stack, but I guess for
QEMU, it's ok... The normal solution for this is allocating objects
that are subject to DMA with dma_alloc().

> +
> +	acc.address = cpu_to_be64((uintptr_t)address);

This doesn't take dma offset into account. The device will probably always
be dma-coherent and 1:1 dma-mapped, but still it doesn't hurt to at least
use cpu_to_dma() instead of the direct cast.

(Note more correct here would be dma_map_single()/dma_unmap_single(),
 but those don't yet handle dma-coherent in barebox).

> +	acc.control = cpu_to_be32(QFW_CFG_DMA_CTL_WRITE);
> +	acc.length = cpu_to_be32(size);
> +	if (entry != QFW_CFG_INVALID)
> +		acc.control = cpu_to_be32(QFW_CFG_DMA_CTL_WRITE | QFW_CFG_DMA_CTL_SELECT | (entry << 16));
> +
> +#ifdef CONFIG_64BIT

if (IS_ENABLED(CONFIG_64BIT))

That way, the inactive branch is at least compile-tested.

> +	__raw_writeq(cpu_to_be64((uintptr_t)&acc), fw_cfg_base + QFW_CFG_OFFSET_DMA64);
> +#else
> +	__raw_writel(cpu_to_be32((uintptr_t)&acc), fw_cfg_base + QFW_CFG_OFFSET_DMA32);
> +#endif
> +
> +	barrier();

The barrier() needs to be _before_ the QFW_CFG_OFFSET_DMA* write as compiler
is free to reorder non-volatile accesses around volatile ones.

> +
> +	while (be32_to_cpu(acc.control) & ~QFW_CFG_DMA_CTL_ERROR);

Use ioread32be here. The barrier() above may ensure compiler doesn't reorder,
but it could still decide to optimize away acc.control fetch without the
volatile access added inside ioread32be. Once both write and poll are
volatile, there is no need for explicit barrier()s.

Also, we probably want to timeout here instead of risking an infinite
loop, you can use something like:

  read_poll_timeout(ioread32be, val, val & ~QFW_CFG_DMA_CTL_ERROR,
	  		USEC_PER_MSEC, &acc.control)


> +}
> +
> +
> +static int qfw_cfg_find_file(void __iomem *fw_cfg_base, const char *filename)
> +{
> +	u32 count, e, select;

__be32 count

> +
> +	qfw_cfg_read_entry(fw_cfg_base, &count, QFW_CFG_FILE_DIR, sizeof(count));
> +	count = be32_to_cpu(count);
> +	for (select = 0, e = 0; e < count; e++) {

You could just use be32_to_cpu(count) directly here then.

> +		struct qfw_cfg_file qfile;
> +		qfw_cfg_read_entry(fw_cfg_base, &qfile, QFW_CFG_INVALID, sizeof(qfile));
> +		if (memcmp(qfile.name, filename, 10) == 0)
> +		{

Nitpick: kernel coding style is brace on same line as condition, but here you
could just return be16_to_cpu(qfile.select) directly.

> +			select = be16_to_cpu(qfile.select);
> +			break;
> +		}
> +	}
> +	return select;

Are we guaranteed qfile.select is always non-zero? I think it would
be better to return something out of the u16 range here, like
-ENOENT.

> +}
> +
> +
> +static int ramfb_alloc(void __iomem *fw_cfg_base, struct fb_info *fbi)
> +{
> +	u32 select;

With suggestion above, int select.

> +	struct qfw_cfg_etc_ramfb etc_ramfb;
> +
> +	select = qfw_cfg_find_file(fw_cfg_base, "etc/ramfb");
> +	if (select == 0) {
> +		dev_err(&fbi->dev, "ramfb: fw_cfg (etc/ramfb) file not found\n");

I would turn this into a dev_dpg. After all qemu fw_cfg could be used
for other stuff.

> +		return -1;

-1 is EPERM. You probably want to use -ENODEV here, so probe failure is
not reported as error.

> +	}
> +	dev_info(&fbi->dev, "ramfb: fw_cfg (etc/ramfb) file at slot 0x%x\n", select);
> +
> +	fbi->screen_size = CONFIG_DRIVER_VIDEO_RAMFB_WIDTH * CONFIG_DRIVER_VIDEO_RAMFB_HEIGHT * fbi->bits_per_pixel;
> +	fbi->screen_base = (void *)xzalloc(fbi->screen_size);

dma_alloc() and no need to cast the return value.

> +
> +	if (!fbi->screen_base) {
> +		dev_err(&fbi->dev, "Unable to use FB\n");
> +		return -1;
> +	}

No need to check. Both xzalloc and dma_alloc can't fail (that's what the x is for).

> +
> +	etc_ramfb.addr = cpu_to_be64((uintptr_t)fbi->screen_base),
> +	etc_ramfb.fourcc = cpu_to_be32(fb_mode.drm_format),
> +	etc_ramfb.flags  = cpu_to_be32(0),
> +	etc_ramfb.width  = cpu_to_be32(fbi->xres),
> +	etc_ramfb.height = cpu_to_be32(fbi->yres),
> +	etc_ramfb.stride = cpu_to_be32(fbi->line_length),
> +	qfw_cfg_write_entry(fw_cfg_base, &etc_ramfb, select, sizeof(etc_ramfb));

This should be set inside the enable callback if we move to doing it dynamically.

> +
> +	return 0;
> +}
> +
> +
> +static int ramfb_probe(struct device_d *dev)
> +{
> +	int ret;
> +	struct ramfb *ramfb;
> +	struct fb_info *fbi;
> +	struct resource *fw_cfg_res;
> +	void __iomem *fw_cfg_base;		/* base address of the registers */
> +
> +	ret = -ENODEV;
> +
> +	fw_cfg_res = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(fw_cfg_res)) {
> +		dev_err(dev, "No memory resource\n");
> +		return PTR_ERR(fw_cfg_res);
> +	}
> +
> +	ramfb = xzalloc(sizeof(*ramfb));
> +
> +	fw_cfg_base = IOMEM(fw_cfg_res->start);
> +	if (!fw_cfg_base)
> +		return ret;

IOMEM() can't fail as mapping is always 1:1.

> +
> +	ramfb->mode.name = fb_mode.format;
> +	ramfb->mode.xres = CONFIG_DRIVER_VIDEO_RAMFB_WIDTH;
> +	ramfb->mode.yres = CONFIG_DRIVER_VIDEO_RAMFB_HEIGHT;
> +
> +	fbi = &ramfb->info;
> +	fbi->mode = &ramfb->mode;
> +
> +	fbi->bits_per_pixel = fb_mode.bpp;
> +	fbi->red = fb_mode.red;
> +	fbi->green = fb_mode.green;
> +	fbi->blue = fb_mode.blue;
> +	fbi->transp = fb_mode.transp;
> +	fbi->xres = ramfb->mode.xres;
> +	fbi->yres = ramfb->mode.yres;
> +	/* this field is calculated by register_framebuffer()
> +	 * but register_framebuffer() can't be called before ramfb_alloc()
> +	 * so set line_length to zero.
> +	 */
> +	fbi->line_length = 0;

I don't really understand the problem here, but I guess with init move
to fb_enable, I think it should go away.

> +	fbi->fbops = &ramfb_ops;
> +
> +	fbi->dev.parent = dev;
> +
> +	ret = ramfb_alloc(fw_cfg_base, fbi);
> +	if (ret < 0) {
> +		dev_err(dev, "Unable to allocate ramfb: %d\n", ret);

Nitpick: return dev_err_probe(dev, "unable to allocate ramfb\n"); is more concise
and will take care of turning the return code into a string if support
is enabled.

> +		return ret;
> +	}
> +
> +	ret = register_framebuffer(fbi);
> +	if (ret < 0) {
> +		dev_err(dev, "Unable to register ramfb: %d\n", ret);
> +		return ret;
> +	}
> +
> +	dev_info(dev, "size %s registered\n", size_human_readable(fbi->screen_size));
> +
> +	return 0;
> +}
> +
> +
> +static const struct of_device_id ramfb_of_match[] = {
> +	{ .compatible = "qemu,fw-cfg-mmio", },

As mentioned on IRC, it would be very useful to have a file system driver
for this, similar to what efivarfs is doing. This driver can then
just run and check /qemu_fwcfg/etc/ramfb and configure via normal
file system API if it exists and return -ENODEV otherwise.

I can understand if this is too much effort, so I am fine with leaving
it inside the FB driver and make generalization something that can
be done later when needed.

I am looking forward to have this part of barebox. Let me know
if I can help with anyting.

Cheers,
Ahmad

> +	{ },
> +};
> +
> +
> +static struct driver_d ramfb_driver = {
> +	.name = "ramfb-framebuffer",
> +	.of_compatible = ramfb_of_match,
> +	.probe = ramfb_probe,
> +};
> +device_platform_driver(ramfb_driver);
> +
> +MODULE_AUTHOR("Adrian Negreanu <adrian.negreanu@nxp.com>");
> +MODULE_DESCRIPTION("QEMU RamFB driver");
> +MODULE_LICENSE("GPL v2");


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


