Delivery-date: Wed, 23 Jun 2021 08:15:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvwAA-0006HW-O4
	for lore@lore.pengutronix.de; Wed, 23 Jun 2021 08:15:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvwA9-0005EV-VA
	for lore@pengutronix.de; Wed, 23 Jun 2021 08:15:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3db2FcV8Yx7Eer1VHHVZ2guK4hxBTOZXTVXGBksaZN0=; b=fil8OIe7MLqrwx1KwvS+H3e12o
	lJFIqXXQGjbvD5MrVWMp6BUoplc9BB2CnkijV/5ccxgxTiyIGdNOP9+lvas4I8WmI9ViazL7qCTqu
	X3SP2vlWVHliv1MJD2Pv7rYbmtq/M7AvInUTNeYYbYV7faNeWP/lyYu/1SeQCMZYo0lAK5sbPAmX5
	ueMdcTLEK4N9wIQ7SKaV5IYpWRykwvMtPfxFQVQn6nezFgZ2z0VzT+cZg7pQTktO4gFiYgSwMguFb
	XIgnAMP47vPBBmt24Fh2BXJxmo829INMUl8BcCuDTzUZGReqVb1ViD6t66CEQ0bLs+a/gUJ4KvhI4
	BuskDybg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvw8o-009WtI-81; Wed, 23 Jun 2021 06:13:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvw8i-009Wrb-05
 for barebox@lists.infradead.org; Wed, 23 Jun 2021 06:13:33 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lvw8g-00054X-2c; Wed, 23 Jun 2021 08:13:30 +0200
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20210623051632.30253-1-s.hauer@pengutronix.de>
 <20210623051632.30253-17-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <cf7b8b42-7c58-f1b7-ff25-0e0e32b46b74@pengutronix.de>
Date: Wed, 23 Jun 2021 08:13:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210623051632.30253-17-s.hauer@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_231332_121289_8F6D0EBE 
X-CRM114-Status: GOOD (  36.20  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 16/17] Documentation: Add documentation for device tree
 overlays
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); Unknown failure

Hi,

some bikeshedding incoming.

On 23.06.21 07:16, Sascha Hauer wrote:
> Document the recently gained device tree overlay features.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  Documentation/user/devicetree.rst | 37 +++++++++++++++++++++++++++++++
>  1 file changed, 37 insertions(+)
> 
> diff --git a/Documentation/user/devicetree.rst b/Documentation/user/devicetree.rst
> index 4be6a1e703..d78394b7aa 100644
> --- a/Documentation/user/devicetree.rst
> +++ b/Documentation/user/devicetree.rst
> @@ -75,3 +75,40 @@ It is important to know that these commands normally work on the internal
>  devicetree. If you want to modify the devicetree the kernel is started with
>  see the -f options to of_property and of_node. This option will register the
>  operation for later execution on the Kernel devicetree.
> +
> +Device tree overlays
> +--------------------
> +
> +barebox has support for device tree overlays. barebox knows two different trees,
> +the live tree and the device tree the kernel is started with. Both can be applied
> +overlays to.
> +
> +Device tree overlays on the live tree
> +.....................................
> +
> +While the live tree can be patched by board code, barebox does not
> +detect any changes to the live tree. To let the overlays have any effect, board
> +code must make sure the live tree is patched before the devices are instanciated
> +from it.
> +
> +Device tree overlays on the kernel device tree
> +..............................................
> +
> +Overlays can be applied to the kernel device tree before it is handed over to
> +the kernel. The behaviour is controlled by different variables:
> +
> +``global.of_overlay_dir``

Convention seems to be that attributes of the same thing are preceded by a `.', e.g.:

global.of.overlay.dir
global.of.overlay.compatible
global.of.overlay.filepattern

(I think the `.' between of and overlay is not a bad idea, as we may decide to have e.g.
 global.of.compatible in future)

> +  Overlays are read from this directory. barebox will try to apply all overlays
> +  found here if not limited by one of the other variables below. When using
> +  bootloader spec this variable will be temporarily overwritten with
> +  ``$mountpoint/overlays`` where ``$mountpoint`` is the path where the filesystem
> +  containing the bootloader spec entries are located.

Couldn't paths be interpreted relative to the $mountpoint? That way you can make
overlays the default always and have the user override it if they prefer something else? 

> +``global.of_overlay_compatible``
> +  This is a space separated list of compatibles. Only overlays matching one of
> +  these compatibles will be applied. When this list is empty then all overlays
> +  will be applied. Overlays that don't have a compatible are considered being
> +  always compatible.

Makes sense.

> +``global.of_overlay_filepattern``
> +  This is a space separated list of file patterns. An overlay is only applied
> +  when its filename matches one of the patterns. The patterns can contain
> +  ``*`` and ``?`` as wildcards. When empty, all files are applied.

Similarly, we could have ``*`` as a default.


In future, I think we will want to have $global.of.overlay.filters. Board code
can register filters that do more than look into compatibles and file patterns,
e.g. compare a property with a value in EEPROM. If a user wants to make use of
it, they can add the name of the filter into $global.of.overlay.filters. But
this can be retrofitted: The variable will have filepattern and compatible
filters as default, so no breakage.

Cheers,
Ahmad


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

