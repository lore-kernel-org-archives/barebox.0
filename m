Delivery-date: Wed, 20 Oct 2021 12:34:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1md8vp-0000Jw-P6
	for lore@lore.pengutronix.de; Wed, 20 Oct 2021 12:34:49 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1md8vo-0002GD-Fn
	for lore@pengutronix.de; Wed, 20 Oct 2021 12:34:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=waOS1qq/cgIj+VhHxcSL/1y9qHvGdSE8yHyvyXLz2BQ=; b=t4Q2kocADJUrpp
	TyrIrvVLTkfLGO4Oc1e5uyEqu6b+BFHtS4AYat4+5FGbVp33/t+VYWaLxUlhvAGIV93JaNhRC65tD
	TTfJk3PUrMMJjqflS0NOEB8VfLcgT5d5MPgLaa8KtSlou29cUpt16LpDozdlXAUSY2yRgg+hAHDWV
	ayO991q2N3f80StAO+Nku5y+i1WTVrXtyfuLtiRROklvxDHDZsIE0EP1k4r/NqVBp93XQmz+suVRO
	C0EpG7sVQZY244BYQenGVaHSNfyshCOC6XOSohVzm6pAmP5oyCvDZK4P5Ko2kmv8Zn5KHAJIUBGNP
	tMJBBwKUBLGO6XbNap2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1md8u6-004927-QP; Wed, 20 Oct 2021 10:33:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1md8u1-00491h-ND
 for barebox@lists.infradead.org; Wed, 20 Oct 2021 10:32:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1md8tx-00024X-QJ; Wed, 20 Oct 2021 12:32:53 +0200
Received: from ore by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1md8tx-0002Jv-Gt; Wed, 20 Oct 2021 12:32:53 +0200
Date: Wed, 20 Oct 2021 12:32:53 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20211020103253.GA8366@pengutronix.de>
References: <20211020064255.3748-1-o.rempel@pengutronix.de>
 <f8c19e10-df34-fc18-e7fd-d8bbaaaaf46b@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f8c19e10-df34-fc18-e7fd-d8bbaaaaf46b@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:31:03 up 244 days, 11:54, 133 users,  load average: 0.27, 0.33,
 0.24
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_033257_795840_72C37B84 
X-CRM114-Status: GOOD (  36.33  )
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
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] usb: net: Add support for the Realtek RTL8152B/RTL8153
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Ahmad,

Thank you for review.

On Wed, Oct 20, 2021 at 09:25:09AM +0200, Ahmad Fatoum wrote:
> Hello Oleksij,
> 
> On 20.10.21 08:42, Oleksij Rempel wrote:
> > This adds support for the Realtek RTL8152B/RTL8153 ethernet converter chip.
> > This driver is based on U-Boot version v2021.10 with port to barebox
> > internal frameworks.
> > 
> > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > ---
> >  drivers/net/usb/Kconfig    |    7 +
...
> > +static int get_registers(struct r8152 *tp, u16 value, u16 index, u16 size,
> > +			 void *data)
> > +{
> > +	void *buf;
> > +	int ret;
> > +
> > +	buf = xmalloc(size);
> 
> Should be dma_alloc to get proper alignment, as USB host drivers may map it
> for streaming DMA. You could allocate a 64 byte bounce buffer once at start
> and reuse it here instead of allocating on each control msg.

done.

> > +	if (!buf)
> > +		return -ENOMEM;
> 
> No need to check xmalloc return btw.

done

> > +
> > +	ret = usb_control_msg(tp->udev, usb_rcvctrlpipe(tp->udev, 0),
> > +			      RTL8152_REQ_GET_REGS, RTL8152_REQT_READ,
> > +			      value, index, buf, size, 500);
> > +	memcpy(data, buf, size);
> > +
> > +	free(buf);
> > +
> > +	return ret;
> > +}

...

> > +static int r8152_wait_for_bit(struct r8152 *tp, bool ocp_reg, u16 type,
> > +			      u16 index, const u32 mask, bool set,
> > +			      unsigned int timeout)
> > +{
> > +	u32 val;
> > +	u64 start;
> > +
> > +	start = get_time_ns();
> > +	do {
> > +		if (ocp_reg)
> > +			val = ocp_reg_read(tp, index);
> > +		else
> > +			val = ocp_read_dword(tp, type, index);
> > +
> > +		if (!set)
> > +			val = ~val;
> > +
> > +		if ((val & mask) == mask)
> > +			return 0;
> > +
> > +		mdelay(1);
> 
> That's a very short delay IMO. I am not sure, spamming that
> often actually produces better results. In __net_poll Sascha says:
> 
> "The timeout can't be arbitrarily small, 2ms is the smallest
> we can do with the 1ms USB frame size.". Does this apply
> here as well?

yes, done.

> > +	} while (!is_timeout(start, timeout * MSECOND));
> > +
> > +	debug("%s: Timeout (index=%04x mask=%08x timeout=%d)\n",
> > +	      __func__, index, mask, timeout);
> > +
> > +	return -ETIMEDOUT;
> > +}
> > +
> > +static void r8152b_reset_packet_filter(struct r8152 *tp)
> > +{
> > +	u32 ocp_data;
> > +
> > +	ocp_data = ocp_read_word(tp, MCU_TYPE_PLA, PLA_FMC);
> > +	ocp_data &= ~FMC_FCR_MCU_EN;
> > +	ocp_write_word(tp, MCU_TYPE_PLA, PLA_FMC, ocp_data);
> > +	ocp_data |= FMC_FCR_MCU_EN;
> > +	ocp_write_word(tp, MCU_TYPE_PLA, PLA_FMC, ocp_data);
> > +}
> > +
> > +static void rtl8152_wait_fifo_empty(struct r8152 *tp)
> > +{
> > +	int ret;
> > +
> > +	ret = r8152_wait_for_bit(tp, 0, MCU_TYPE_PLA, PLA_PHY_PWR,
> > +				 PLA_PHY_PWR_TXEMP, 1, R8152_WAIT_TIMEOUT);
> > +	if (ret)
> > +		debug("Timeout waiting for FIFO empty\n");
> 
> Please use dev_dbg here and everywhere else, so it's immediately
> known where they originate from.

done

> > +
> > +	ret = r8152_wait_for_bit(tp, 0, MCU_TYPE_PLA, PLA_TCR0,
> > +				 TCR0_TX_EMPTY, 1, R8152_WAIT_TIMEOUT);
> > +	if (ret)
> > +		debug("Timeout waiting for TX empty\n");
> > +}
> > +
...
> > +static int r8152_init_common(struct r8152 *tp, struct usbnet *dev)
> > +{
> > +	bool timeout = false;
> > +	int link_detected;
> > +	u64 start;
> > +	u8 speed;
> > +
> > +	debug("** %s()\n", __func__);
> > +
> > +	printf("Waiting for Ethernet connection... ");
> > +	start = get_time_ns();
> > +	do {
> > +		speed = rtl8152_get_speed(tp);
> > +
> > +		link_detected = speed & LINK_STATUS;
> > +		if (!link_detected) {
> > +			mdelay(TIMEOUT_RESOLUTION);
> > +			if (is_timeout(start, PHY_CONNECT_TIMEOUT * MSECOND))
> > +				timeout = true;
> 
> return an error code?

done

> > +		}
> > +	} while (!link_detected && !timeout);
> > +
> > +	if (link_detected) {
> > +		tp->rtl_ops.enable(tp);
> > +
> > +		if (!timeout)
> > +			printf("done.\n");
> 
> timeout == true => link_detected == false, so this condition is
> never false. Just early exit above.

done

> > +	} else {
> > +		printf("unable to connect.\n");
> 
> dev_warn, so it includes device name and is written to log (dmesg/pstore).

done

> > +	}
> > +
> > +	return 0;
> 
> You check this code although it's always zero, so you never act on
> the unabel to connect.

fixed

> > +static int r8153_pre_ram_code(struct r8152 *tp, u16 patch_key)
> > +{
> > +	u16 data;
> > +	int i;
> > +
> > +	data = ocp_reg_read(tp, 0xb820);
> > +	data |= 0x0010;
> > +	ocp_reg_write(tp, 0xb820, data);
> > +
> > +	for (i = 0, data = 0; !data && i < 5000; i++) {
> > +		mdelay(2);
> 
> That's up to 10 seconds

converted to is_timeout()

> > +		data = ocp_reg_read(tp, 0xb800) & 0x0040;
> > +	}
> > +
> > +	sram_write(tp, 0x8146, patch_key);
> > +	sram_write(tp, 0xb82e, 0x0001);
> > +
> > +	return -EBUSY;
> 
> This is ignored. At least a message why it took 10 seconds
> would be nice.

hm, this return value makes no sense. I added warning and converted
function to void.

> > +}
> > +
> > +static int r8153_post_ram_code(struct r8152 *tp)
> > +{
> > +	u16 data;
> > +
> > +	sram_write(tp, 0x0000, 0x0000);
> > +
> > +	data = ocp_reg_read(tp, 0xb82e);
> > +	data &= ~0x0001;
> > +	ocp_reg_write(tp, 0xb82e, data);
> > +
> > +	sram_write(tp, 0x8146, 0x0000);
> > +
> > +	data = ocp_reg_read(tp, 0xb820);
> > +	data &= ~0x0010;
> > +	ocp_reg_write(tp, 0xb820, data);
> > +
> > +	ocp_write_word(tp, MCU_TYPE_PLA, PLA_OCP_GPHY_BASE, tp->ocp_base);
> > +
> > +	return 0;
> > +}
> > +
> > +static void r8153_wdt1_end(struct r8152 *tp)
> > +{
> > +	int i;
> > +
> > +	for (i = 0; i < 104; i++) {
> > +		if (!(ocp_read_byte(tp, MCU_TYPE_USB, 0xe404) & 1))
> > +			break;
> > +		mdelay(2);

converted to is_timeout()

> > +	}
> > +}
> > +
> > +void r8152b_firmware(struct r8152 *tp)
> > +{
> > +	int i;
> > +
 
Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

