Delivery-date: Fri, 10 Apr 2026 15:25:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wBBrS-00Aeo4-36
	for lore@lore.pengutronix.de;
	Fri, 10 Apr 2026 15:25:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wBBrS-0007Ka-92
	for lore@pengutronix.de; Fri, 10 Apr 2026 15:25:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/g+hDjGnD4IFVuRTDDJgW26nHw3KqcPEjgoDdFyjWNg=; b=EVeu/7BAUfeV0eStRIXiidik5z
	yJon6mDZ3jr4hqIRwzNNsp9wPKrGTthW5NRsMe/Ih9hGtnbL//YUYcLIMzzqH5C9yWgLABzzNjiWC
	IwtqogOpF0Bww/trYqp0xuvJXOuv0Dk7Xi3Rtc58w1knnmpIJCS3E2ijNm6knU4vOUbQwhEj68/kc
	m5fYK5/lm+Rwf8A/SBZXzW49E55tjMFjjU1ev69UGXnrfD5N02lMXxC/Uzx/mO7J5Yh+CXIIBzmAg
	ekjL0lexHIWy595Y06SPzdB3TJfpK9FvBi85T4gG3lnl8heHqV7HbToRL3tFKGd2fQ/OXTFSM1afU
	QEjJXmsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBBqq-0000000CJYk-2eM1;
	Fri, 10 Apr 2026 13:24:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBBqp-0000000CJYc-3tpD
	for barebox@bombadil.infradead.org;
	Fri, 10 Apr 2026 13:24:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=/g+hDjGnD4IFVuRTDDJgW26nHw3KqcPEjgoDdFyjWNg=; b=f7Bywr0XPjUd7iPfymatwV7ObD
	CFcFbmuEbiLyp0KrHOWHDI0xHZK6px44NvKUACS4w5IsMILBi2ldaZwLTkWAThuVghrEJyEkxL4II
	EG/foy3dnsRFvYZj49YE7I6/3oUqrTKKFAlhN0K8/0Pk74IS4v6ZLJ8XLW71UUZrly9//25+DCNzP
	tSCcMKBbE4wa503q7T9FR/6VOjIcJekmBSGihbDCsbTZ7aOCsVY0chhUHwo8mwY8pzzJRlZCW9YMC
	1ZRQTGCz4nm/qmVsnoRUQFjAwXo8/+7NHjx8Q2k8yoDkE1JVsT5ybzjRsbitD81dbVg2a3+ak4RK8
	zLQR9Qdg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBBqm-0000000DZd1-1kNb
	for barebox@lists.infradead.org;
	Fri, 10 Apr 2026 13:24:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wBBqj-0007Dn-3M; Fri, 10 Apr 2026 15:24:41 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wBBqi-004h6j-2y;
	Fri, 10 Apr 2026 15:24:40 +0200
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wBBqi-00000001Yds-3Ro1;
	Fri, 10 Apr 2026 15:24:40 +0200
Date: Fri, 10 Apr 2026 15:24:40 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <adj6GDJNNO-P92pU@pengutronix.de>
References: <20260409-socfpga-iossm-v1-v2-0-09effab91bc1@pengutronix.de>
 <20260409-socfpga-iossm-v1-v2-2-09effab91bc1@pengutronix.de>
 <6a85db06-090f-4be3-b184-1f558a4c4f4a@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <6a85db06-090f-4be3-b184-1f558a4c4f4a@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260410_142444_548037_15A79E98 
X-CRM114-Status: GOOD (  29.95  )
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
Cc: BAREBOX <barebox@lists.infradead.org>, Steffen Trumtrar <s.trumtrar@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 02/10] arm: socfpga: iossm: add version check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, 10 Apr 2026 10:18:58 +0200, Ahmad Fatoum wrote:
> On 4/9/26 3:52 PM, Michael Tretter wrote:
> > There is a version 1 of the IOSSM, which is used if the board
> > configuration was created with Quartus 25.3.0 or later.
> > 
> > Warn the user if barebox didn't detect the supported version 0.
> > 
> > Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> > ---
> > Changes in v2:
> > 
> > - none
> > ---
> >  arch/arm/mach-socfpga/iossm_mailbox.c | 27 +++++++++++++++++++++++++++
> >  arch/arm/mach-socfpga/iossm_mailbox.h |  2 ++
> >  2 files changed, 29 insertions(+)
> > 
> > diff --git a/arch/arm/mach-socfpga/iossm_mailbox.c b/arch/arm/mach-socfpga/iossm_mailbox.c
> > index d89117da4fd4..d14399f305de 100644
> > --- a/arch/arm/mach-socfpga/iossm_mailbox.c
> > +++ b/arch/arm/mach-socfpga/iossm_mailbox.c
> > @@ -27,6 +27,9 @@
> >  #define INTF_IP_TYPE_MASK	GENMASK(31, 29)
> >  #define INTF_INSTANCE_ID_MASK	GENMASK(28, 24)
> >  
> > +#define IOSSM_MAILBOX_HEADER_OFFSET			0x0
> > +#define IOSSM_MAILBOX_SPEC_VERSION_MASK			GENMASK(2, 0)
> > +
> >  /* supported DDR type list */
> >  static const char *ddr_type_list[7] = {
> >  		"DDR4", "DDR5", "DDR5_RDIMM", "LPDDR4", "LPDDR5", "QDRIV", "UNKNOWN"
> > @@ -163,6 +166,18 @@ int io96b_mb_req(phys_addr_t io96b_csr_addr, u32 ip_type, u32 instance_id,
> >  	return 0;
> >  }
> >  
> > +static int io96b_mb_version(struct io96b_info *io96b_ctrl)
> > +{
> > +	phys_addr_t io96b_csr_addr = io96b_ctrl->io96b[0].io96b_csr_addr;
> > +	u32 mailbox_header;
> > +	int version;
> > +
> > +	mailbox_header = readl(io96b_csr_addr + IOSSM_MAILBOX_HEADER_OFFSET);
> 
> Nitpick: readl() is supposed to take void __iomem * (virtual addresses),
> not physical addresses, so a phys_to_virt is missing here.
> 
> They currently expands to the same value (with different types) though
> on ARM.

The entire driver uses readl() with io96b_csr_addr as phys_addr_t
without calling phys_to_virt. There are occasionally sprinkled casts
using IOMEM(), but it's not consistent. It may be worth doing a cleanup
across the entire driver, but that should be a separate patch series.

Michael

> 
> You don't have to resend just for this though.
> 
> Thanks,
> Ahmad
> 
> > +	version = FIELD_GET(IOSSM_MAILBOX_SPEC_VERSION_MASK, mailbox_header);
> > +
> > +	return version;
> > +}
> > +
> >  /*
> >   * Initial function to be called to set memory interface IP type and instance ID
> >   * IP type and instance ID need to be determined before sending mailbox command
> > @@ -172,6 +187,18 @@ void io96b_mb_init(struct io96b_info *io96b_ctrl)
> >  	struct io96b_mb_resp usr_resp;
> >  	u8 ip_type_ret, instance_id_ret;
> >  	int i, j, k;
> > +	int version;
> > +
> > +	version = io96b_mb_version(io96b_ctrl);
> > +	switch (version) {
> > +	case 0:
> > +		pr_debug("IOSSM: mailbox version %d\n", version);
> > +		break;
> > +	default:
> > +		pr_warn("IOSSM: unsupported mailbox version %d\n", version);
> > +		break;
> > +	}
> > +	io96b_ctrl->version = version;
> >  
> >  	pr_debug("%s: num_instance %d\n", __func__, io96b_ctrl->num_instance);
> >  	for (i = 0; i < io96b_ctrl->num_instance; i++) {
> > diff --git a/arch/arm/mach-socfpga/iossm_mailbox.h b/arch/arm/mach-socfpga/iossm_mailbox.h
> > index 29b3f069072d..bd66621d5f70 100644
> > --- a/arch/arm/mach-socfpga/iossm_mailbox.h
> > +++ b/arch/arm/mach-socfpga/iossm_mailbox.h
> > @@ -110,6 +110,7 @@ struct io96b_instance {
> >  /*
> >   * Overall IO96B instance(s) information
> >   *
> > + * @version:		Version of the IO96B
> >   * @num_instance:	Number of instance(s) assigned to HPS
> >   * @overall_cal_status: Overall calibration status for all IO96B instance(s)
> >   * @ddr_type:		DDR memory type
> > @@ -120,6 +121,7 @@ struct io96b_instance {
> >   * @num_port:		Number of IO96B port.
> >   */
> >  struct io96b_info {
> > +	int			 version;
> >  	u8			 num_instance;
> >  	bool			 overall_cal_status;
> >  	const char		*ddr_type;
> > 


