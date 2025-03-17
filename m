Delivery-date: Mon, 17 Mar 2025 11:59:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu8BZ-000aGF-36
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 11:59:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu8BY-00033R-Pw
	for lore@pengutronix.de; Mon, 17 Mar 2025 11:59:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZJD18ZK2ThvImuDH/8//DzAWjMSqvhKs+g5vxGiRJvY=; b=ZuCJ+KNxjszHyhEXynDLD2HzcB
	FTs3OLnGxzHI3sgKvkS6+sGlrcrCSMVxD5GyK8vPwDamKs9RheMJElxdRHtFFsfjm/WMa+qBYgZW6
	5/9lRAQHbCYyUpEtW/sIMUBdeKg38buene9OFmvQqFbr3ZJYqbPXHjryu4k+9OWssoY8b7M+atnj9
	jjWJGTCNzqAn4yyrB+UCZxciT584lUFeqfIjFwuXnNcUhQHeiF9XHp97iBk9dFAI+6DZrFiBgM0hW
	M+ASLr1asrM9hKUw+WfAJVjz1a3gLlcwbQTqSp9Fh5BZf9zsEIUclQF2e/icaO63dPmcpPjmqrjqu
	dtLssJ6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu8B4-00000002HbJ-48wW;
	Mon, 17 Mar 2025 10:58:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu85e-00000002GEq-294G
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 10:53:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tu85c-0001f1-Kv; Mon, 17 Mar 2025 11:53:00 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tu85c-000ENY-06;
	Mon, 17 Mar 2025 11:53:00 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tu85c-0019py-13;
	Mon, 17 Mar 2025 11:53:00 +0100
Date: Mon, 17 Mar 2025 11:53:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <Z9f_DK_AlkhH3jOO@pengutronix.de>
References: <20250317-mci-misc-cleanup-v1-0-24b4d6f5d31a@pengutronix.de>
 <20250317-mci-misc-cleanup-v1-1-24b4d6f5d31a@pengutronix.de>
 <CAP1tNvTCxfq7wnfwhmvMhKga67h4YUw4RebJYGxcb4o2Yw2btQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP1tNvTCxfq7wnfwhmvMhKga67h4YUw4RebJYGxcb4o2Yw2btQ@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_035302_552944_E0877F09 
X-CRM114-Status: GOOD (  24.15  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/6] mci: use struct cid
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Mar 17, 2025 at 12:41:22PM +0300, Alexander Shiyan wrote:
> Hello.
> 
> > Linux has a struct mmc_cid where the CID data is parsed into whereas
> > in barebox we call the UNSTUFF_BITS macro whenever we need a field
> > from the CID data. Do it like Linux and parse the CID data into the
> > same struct. While at it convert the UNSTUFF_BITS macro into a
> > unstuff_bits static inline function.
> ...
> > diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> > index 7ec2643b8d..34ea775813 100644
> > --- a/drivers/mci/mci-core.c
> > +++ b/drivers/mci/mci-core.c
> > @@ -26,19 +26,19 @@
> >
> >  #define MAX_BUFFER_NUMBER 0xffffffff
> >
> > -#define UNSTUFF_BITS(resp,start,size)                                  \
> > -       ({                                                              \
> > -               const int __size = size;                                \
> > -               const u32 __mask = (__size < 32 ? 1 << __size : 0) - 1; \
> > -               const int __off = 3 - ((start) / 32);                   \
> > -               const int __shft = (start) & 31;                        \
> > -               u32 __res;                                              \
> > -                                                                       \
> > -               __res = resp[__off] >> __shft;                          \
> > -               if (__size + __shft > 32)                               \
> > -                       __res |= resp[__off-1] << ((32 - __shft) % 32); \
> > -               __res & __mask;                                         \
> > -       })
> > +static inline u32 unstuff_bits(const u32 *resp, int start, int size)
> > +{
> > +       const int __size = size;
> > +       const u32 __mask = (__size < 32 ? 1 << __size : 0) - 1;
> > +       const int __off = 3 - (start / 32);
> > +       const int __shft = start & 31;
> > +       u32 __res = resp[__off] >> __shft;
> > +
> > +       if (__size + __shft > 32)
> > +               __res |= resp[__off - 1] << ((32 - __shft) % 32);
> > +
> > +       return __res & __mask;
> > +}
> 
> For board specific code where the eMMC ID is used as a unique identifier,
> it would be useful to have this function in the header.

Wouldn't you rather use something like getenv("mmc0.cid_psn") then?

We could also introduce some mmc helper function for convenience.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


