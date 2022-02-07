Delivery-date: Mon, 07 Feb 2022 16:17:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH5lO-008MQD-Ih
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 16:17:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH5lN-0003Z7-5O
	for lore@pengutronix.de; Mon, 07 Feb 2022 16:17:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RC7X4RtZxnjjaAzHrkPtrcT6mUdBUt0lMifAYgJPMtE=; b=Mi8TEpxHQjkSRR
	uiJKWZHaq4a/0SnYt/+HaezEL+D8FZO8VSMATfZUeOMgxxIBZcEkLyMZvUeRpfZTYJMzQSW7dJnhP
	XHWEGs1G7m6O/U4qAHcamQYlt1nUgPmZMbc8WZOCYgdcOSX4d+IaiM5a3+PPiMqSy1qbkWHoN8IXv
	0uxLpxEjYJqKUhUnFxmNnwp36E/xvK7GQyanaTCz5/4Nz25p8SG6Nma3sY5cd6z6M6xg6Uvf8yTFw
	zA227q3qzhamDaStrWMAWBjUMpWBOuy+iUB8ep92qtCNDybNl9wwbtBrtZ31SeLCPMRyeCD6DHzAt
	tA3AU7U98BPEkb5FwaEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nH5k3-00AekW-59; Mon, 07 Feb 2022 15:15:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nH5jq-00Aefg-At
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 15:15:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 helo=[IPv6:::1]) by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <r.czerwinski@pengutronix.de>)
 id 1nH5jn-0003Iw-CJ; Mon, 07 Feb 2022 16:15:31 +0100
Message-ID: <539a6e7c24765fd225c55833c87827873120378d.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Barebox List <barebox@lists.infradead.org>
Date: Mon, 07 Feb 2022 16:15:30 +0100
In-Reply-To: <CAMHeXxNHnqwoBx7w_Hchrp4ZAM9PPtrgu1q0A5k-YW-1-W31gw@mail.gmail.com>
References: <20210617092303.241349-1-r.czerwinski@pengutronix.de>
 <CAMHeXxNHnqwoBx7w_Hchrp4ZAM9PPtrgu1q0A5k-YW-1-W31gw@mail.gmail.com>
Organization: Pengutronix e.K.
User-Agent: Evolution 3.42.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_071534_424983_A6497C41 
X-CRM114-Status: GOOD (  24.52  )
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
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] ARM: imx: add support for TQMa6UL SoM on MBa6ulxl
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Trent,

On Thu, 2021-06-17 at 17:03 -0700, Trent Piepho wrote:
> On Thu, Jun 17, 2021 at 2:25 AM Rouven Czerwinski
> <r.czerwinski@pengutronix.de> wrote:
> > +
> > +static void setup_uart(void)
> > +{
> > +       void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;
> > +
> > +       imx6_ungate_all_peripherals();
> > +
> > +       imx_setup_pad(iomuxbase, MX6_PAD_UART1_TX_DATA__UART1_DCE_TX);
> > +       imx_setup_pad(iomuxbase, MX6_PAD_UART1_RX_DATA__UART1_DCE_RX);
> 
> From what I can tell, imx_setup_pad() will program the conf register
> with 0.  Not a more typical value like 0x1b0b1 that is in most dts
> files.  Does this actually work?  It seems like one needs to OR in the
> pad conf value to the pinmux config constant to actually program this
> correctly.

No, while imx_setup_pad can include the pad control, the mux defines
above do not include one and in this case the pad configuration is not
written (iomux-v3.h:137). So the imx_setup_pad above only touches the
mux configuration, but keeps the pad configuration as is.

> 
> > +       imx6_uart_setup((void *)MX6_UART1_BASE_ADDR);
> > +       pbl_set_putc(imx_uart_putc, (void *)MX6_UART1_BASE_ADDR);
> > +
> > +       pr_debug("\n");
> 
> Do you actually get the output from this?  I'm trying to add a new
> imx6ul board and it seems like one needs a delay between the uart
> setup and the uart actually working to output data.  Or perhaps this
> is just my board.

Yes, on my board this adds a newline within the PBL console.

> 
> > +static void noinline start_mba6ulx(void)
> > +{
> > +       setup_uart();
> 
> Why setup uart when LL_DEBUG is not enabled?  This dts should have
> this working without any extra setup.

Because this boards supports the PBL console and setup_uart is required
for the PBL console to work, since the PBL does not parse this
information from the DT.

> 
> > +
> > +       imx6ul_barebox_entry(__dtb_z_imx6ul_mba6ulx_start);
> > +}
> > +
> > +ENTRY_FUNCTION(start_imx6ul_mba6ulx, r0, r1, r2)
> > +{
> > +
> > +       imx6ul_cpu_lowlevel_init();
> > +
> > +       arm_setup_stack(0x00910000);
> > +
> > +       if (IS_ENABLED(CONFIG_DEBUG_LL)) {
> > +               imx6_uart_setup_ll();
> 
> Don't you need the muxing and other code in setup_uart() for this to work?

No, conveniently the board uses the default configuration for UART one.
The muxing setup for the PBL console could be removed. Sascha, what do
you think?


-- 
Pengutronix e.K.           | Rouven Czerwinski          |
Steuerwalder Str. 21       | http://www.pengutronix.de/ |
31137 Hildesheim, Germany  | Phone: +49-5121-206917-0   |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

