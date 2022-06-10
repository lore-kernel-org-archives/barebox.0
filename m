Delivery-date: Fri, 10 Jun 2022 08:38:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzYHl-009jnd-82
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 08:38:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzYHj-00068L-V5
	for lore@pengutronix.de; Fri, 10 Jun 2022 08:38:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/6623hU+6XjODv3WQu2q7R80ZsgWzzwJDEtx7xYkogY=; b=eDIhIF/PBm2Oi8
	Wv7LfMhDhzh4Jt5UkushtLvJooKYeN7CXvbCEaXNBdJvEtVQ91CFSBmIf5BbfwbNfgRexu5pV3FzO
	DJ5Godo//9/+A+TbQR7Sr/1rzbsxmkDN+qPftfztJVunVKVit+onu+B3ysMXuKgFN9OpVGdzcXVkd
	LZKnsQDcB+WXtx41xRnB23OZfpQoEB2+rLQO3SxfAydYEy4ukPZokeHAip/biTxlghN9LmAWXucrl
	ldudFvHBe5C+5yOkTDciqLAj73gADpeoi6RJqj7q+pzYkY1EfOW2CF3TW7L+CM0kbGsiEkC4GbIaU
	izGz9TGiIIGDtDCzpB6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzYGG-006BGe-LR; Fri, 10 Jun 2022 06:36:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzYGA-006BCt-JB
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 06:36:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mol@pengutronix.de>)
	id 1nzYG3-0005sX-Ki; Fri, 10 Jun 2022 08:36:35 +0200
Received: from mol by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mol@pengutronix.de>)
	id 1nzYG3-0002nl-Ba; Fri, 10 Jun 2022 08:36:35 +0200
Date: Fri, 10 Jun 2022 08:36:35 +0200
From: Michael Olbrich <m.olbrich@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20220610063635.GF16749@pengutronix.de>
Mail-Followup-To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org
References: <20220609130936.3616309-1-a.fatoum@pengutronix.de>
 <20220609130936.3616309-2-a.fatoum@pengutronix.de>
 <20220609141038.GW1615@pengutronix.de>
 <0bc9c029-ee77-ae1c-f9a5-083c3db5544a@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0bc9c029-ee77-ae1c-f9a5-083c3db5544a@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:34:06 up 71 days, 19:03, 67 users,  load average: 0.01, 0.06,
 0.08
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_233642_666860_754F08D4 
X-CRM114-Status: GOOD (  30.74  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 2/2] fastboot: bail if update handler couldn't be
 found for bbu-partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 09, 2022 at 04:12:39PM +0200, Ahmad Fatoum wrote:
> On 09.06.22 16:10, Sascha Hauer wrote:
> > On Thu, Jun 09, 2022 at 03:09:36PM +0200, Ahmad Fatoum wrote:
> >> Fastboot would fall back to a raw copy even for bbu- partitions if
> >> no barebox_update handler was found. Prevent this by bailing out
> >> with an error code.
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >> v2 -> v3:
> >>   - bail out instead of only printing message and falling back
> >>     to raw copy (Sascha)
> >> v1 -> v2:
> >>   - print message in case barebox_update handler is not found
> >> ---
> >>  common/fastboot.c | 9 +++++++--
> >>  1 file changed, 7 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/common/fastboot.c b/common/fastboot.c
> >> index 330a06f5a32f..a5cf04b39ecd 100644
> >> --- a/common/fastboot.c
> >> +++ b/common/fastboot.c
> >> @@ -683,8 +683,13 @@ static void cb_flash(struct fastboot *fb, const char *cmd)
> >>  		};
> >>  
> >>  		handler = bbu_find_handler_by_device(data.devicefile);
> >> -		if (!handler)
> >> -			goto copy;
> >> +		if (!handler) {
> >> +			fastboot_tx_print(fb, FASTBOOT_MSG_FAIL,
> >> +					  "No barebox update handler registered for %s",
> >> +					  data.devicefile);
> >> +			ret = -ENOENT;
> >> +			goto out;
> >> +		}
> > 
> > I didn't verify that, but I believe a full raw bootable disk image
> > generated for i.MX will be detected as barebox image. With this patch we
> > wouldn't be able to flash that anymore.
> 
> Can we just apply v2 and see how often we see the message?

Or maybe the 'is a barebox image' detection is not strict enough? We know
the image size, right? Is there a way to determine the size of the actual
barebox image? If the two differ then it's not a barebox image after all.

Michael

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

