Delivery-date: Tue, 18 Mar 2025 16:07:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuYXJ-00150n-34
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 16:07:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuYXI-0003ZY-Ra
	for lore@pengutronix.de; Tue, 18 Mar 2025 16:07:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OvDgR4mqNX7GHxZhfIYfb94sU3BQHCY46dDMoH8Ov0k=; b=klsyWu7R79kjZJEtiWo94XWLkV
	kUplGY5GgdLCFBz102eeDe5yC4uG6NQZdQkOw/ZQTIEGKY7oN3tEkE7Sxjmp54Li8BWx6ezstq0lb
	6hthDsk8E6aFzC+vs13shlDynyVn4XvmWwi9E58bp+oWx6WXqv9p8SbtbkD9jiecBlKgMHMMpdv+q
	Zd1XTh/GggDmvLJX32w7QI8+H8KpwcvS/NIs7xaX29N7gtUl97VJzyaC/dmAnMBHsqPqMDrC4JGrC
	v4QSgL2Z887sBDAaUNKGefPBOvbVnVMV2Dlr3FNiMXfZyQTYkc1rvf7N6fdcvLXv8doGAJ3XYRD9j
	Xjzvk1QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYWq-00000006Iw0-1N5f;
	Tue, 18 Mar 2025 15:06:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYWn-00000006Iue-2yAN
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 15:06:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tuYWl-0003RL-Nz; Tue, 18 Mar 2025 16:06:47 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tuYWl-000Rtb-05;
	Tue, 18 Mar 2025 16:06:47 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tuYWl-0034sI-18;
	Tue, 18 Mar 2025 16:06:47 +0100
Date: Tue, 18 Mar 2025 16:06:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <Z9mMB8_1LV_YmcxN@pengutronix.de>
References: <20250318-filetype-size-reduction-v1-0-4f463ffae7d0@pengutronix.de>
 <20250318-filetype-size-reduction-v1-2-4f463ffae7d0@pengutronix.de>
 <f7975f67-d659-48c3-bf1b-498331fc5401@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f7975f67-d659-48c3-bf1b-498331fc5401@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_080649_743102_EEAB0A13 
X-CRM114-Status: GOOD (  15.24  )
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
Subject: Re: [PATCH 2/7] filetype: add file_detect_fs_type()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Mar 18, 2025 at 03:51:44PM +0100, Ahmad Fatoum wrote:
> Hi,
> 
> On 3/18/25 15:41, Sascha Hauer wrote:
> > add file_detect_fs_type() which only tests if the buffer contains one of
> > the supported filesystems without testing for other binary formats.
> 
> 
> > +enum filetype file_detect_fs_type(const void *_buf, size_t bufsize)
> 
> [snip]
> 
> >  enum filetype file_detect_type(const void *_buf, size_t bufsize)
> > -	if (bufsize >= 1536 && buf16[512 + 28] == le16_to_cpu(0xef53))
> > -		return filetype_ext;
> > -
> >  	if (strncmp(buf8 + CH_TOC_section_name, "CHSETTINGS", 10) == 0)
> >  		return filetype_ch_image
> 
> Shouldn't file_detec_type() still call file_detect_fs_type()?

Sure, that was the intention at least.

Thanks for catching, fixed this.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


