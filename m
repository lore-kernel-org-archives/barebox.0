Delivery-date: Tue, 26 Sep 2023 13:38:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ql6OY-00BxHH-SJ
	for lore@lore.pengutronix.de; Tue, 26 Sep 2023 13:38:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ql6OW-0006pS-K3
	for lore@pengutronix.de; Tue, 26 Sep 2023 13:38:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ExTgLskx4tn+xUCri/QxOvwY3Iqy3NXOzJ1DSIFXaXc=; b=vvbhfShCtA2T1SC5oEMPM/gNV6
	NV+8+2+PXwHsmlJl7otQjOpLGChCTiw8qb/XZX57ePOEwznLTkEum2ZHEGBF5q8yUiIQE8KPJ9Xwf
	qRUSysYshwM2ooTnH8fxef+FSZ6gBPpC7cxsj1YvwX+b290rHuxPls71AOLpMABDk3ypcat1ne+fk
	xrL0tSZjo3yF7j4DCklEOPEgAKL3WpqdDv6p2owMMzwpfKqt9wePMRNXqRxj1/qJ9qIvxTbwwm3w/
	0AZDTaAsfft+zEyg7ZTe1+EcGzyFtLzFBd9/6JpWbmstMWiz7umO4xlpjQ/qwILm+gZ99sZySTCE2
	5j4RifMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ql6NJ-00GGrc-0i;
	Tue, 26 Sep 2023 11:37:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ql6N7-00GGrG-2S
	for barebox@lists.infradead.org;
	Tue, 26 Sep 2023 11:36:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ql6N5-0005wQ-Af; Tue, 26 Sep 2023 13:36:55 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ql6N3-0095qJ-6n; Tue, 26 Sep 2023 13:36:53 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ql6N3-00BYcI-4U; Tue, 26 Sep 2023 13:36:53 +0200
Date: Tue, 26 Sep 2023 13:36:53 +0200
To: Denis Osterland-Heim <denis.osterland@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20230926113653.GB637806@pengutronix.de>
References: <9282a3854372e58d9641993d5fb0bada29818415.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9282a3854372e58d9641993d5fb0bada29818415.camel@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230926_043657_819187_0F838125 
X-CRM114-Status: GOOD (  15.30  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/2] raspi: pass additional VC values via dtb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Denis,

On Mon, Sep 25, 2023 at 01:09:36PM +0200, Denis Osterland-Heim wrote:
> v2: fix whitespace error, add acked-by of Ahmad, fix line of 80 chars
> 
> Denis OSTERLAND-HEIM (2):
>       raspi: support to read vc values via dt-2nd boot
>       raspi: fixup additional vc created nodes
> 
>  arch/arm/boards/raspberry-pi/rpi-common.c | 69 ++++++++++++++++++++++-
> --------
>  1 file changed, 49 insertions(+), 20 deletions(-)

The patches are still mangled. There are additional linebreaks, spaces
are replaced by UTF-8 character 0xc2a0 and tabs are replaced by multiple
0xc2a0. I fixed this up by hand this time, but please check your setup
for the next time. Are you using git send-email? If not, I'd recommend
doing so.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


