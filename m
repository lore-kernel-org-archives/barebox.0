Delivery-date: Sat, 09 Mar 2024 11:02:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ritXV-00F7mv-20
	for lore@lore.pengutronix.de;
	Sat, 09 Mar 2024 11:02:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ritXU-0007cH-Vr
	for lore@pengutronix.de; Sat, 09 Mar 2024 11:02:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UavSDbrMaR8jDq9FiKWTF5aGEf8eMeHz5k8g5s6jubk=; b=Tjg1OpeD+hAe3kMiK0Fa9BLrdr
	ysht6KXIB7Epri3gRy97Yj0EITNnoxwpyQrrxQDIWDP7GQD3Vv6GK+arRTDCYuMmYY4vT5tr/tw6+
	D/yWjiOsaVrLsA97eyrVrrgWzz5iuSWoD/yFCKIEz8fQVZnGVLgWuxt+tqe7RauYAiRBk4jr7V9Gg
	vz74X61v75hDrhXLq+eeMhzySH4eMkXzs8roUAici+3KmhZzJ/RsuaPNsbjBabf4O/GwTI9iDJr82
	Nw6IwWsHBMi1Hir+mBBmd3g2ICS7m4wfGKyiylLxYPQ2tz9oxwZTe+VJNEbmDl+CT68h5znDMvVPR
	D1MHNCVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ritWp-0000000D39O-0pjC;
	Sat, 09 Mar 2024 10:02:07 +0000
Received: from mail.gnudd.com ([93.91.132.248])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ritWl-0000000D37c-2guf
	for barebox@lists.infradead.org;
	Sat, 09 Mar 2024 10:02:05 +0000
Received: from rubini by mail.gnudd.com with local (Exim 4.94.2)
	(envelope-from <rubini@arcana.gnudd.com>)
	id 1ritWe-0005zi-AV; Sat, 09 Mar 2024 11:01:56 +0100
Date: Sat, 9 Mar 2024 11:01:56 +0100
From: Alessandro Rubini <rubini-list@gnudd.com>
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
Message-ID: <ZewzlAE4rg3ZNZks@arcana.i.gnudd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: GnuDD, Device Drivers, Embedded Systems, Courses
In-Reply-To: <ZernJsdi43QXwuVr@pengutronix.de>
References: <ZernJsdi43QXwuVr@pengutronix.de>
  <20240220004316.fdc79907089c7358a1e67f62@gmail.com>
  <CAAvCNcCZhS8mkvdgcJ2L-eiur+OxgWEXRLnadO_HFyHfSi7WFA@mail.gmail.com>
  <a154ae13-86e1-4c2b-9c38-3774fde6a6c8@pengutronix.de>
  <20240205125900.c4b182f57b6efe0152beee24@gmail.com>
  <90de314f-b7a7-4b49-8c72-ec45aa3d38e2@pengutronix.de>
  <ZdSu671i2n4RQPoz@arcana.i.gnudd.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240309_020203_700235_FD6B159F 
X-CRM114-Status: GOOD (  11.47  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: NFSv4 boot support?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Sascha:
> In order to get an idea of how routing is supposed to work I had to look
> around in the code. It's really a pain to see and I really don't want to
> have to debug it. The combination of two spaces indentation and a huge
> #ifdef density makes it really hard to read.

Indentation is affordable. We understand different people make different
choices (but I always suggest to read Linus' coding style guide, where every
choice is explained).

ifdef is a plague. There's almost no reason to use it nowadays, but I
see it had it's role when memory and processing power was so limited.

> From that experience I can understand your concerns about lwIP.

:)

Thanks a lot for taking a serious look. I never used it myself, I only
looked at the code and heard from mates who had to make their hands
dirty.

I love what Antony did, but I admit I didn't test it. My own plague is
being late with deliverables and with life in general -- but I'm sure
I'm not alone.

thanks
/alessandro
-- 
  +39-0382-529554 sempre, solo se ci sono
  +39-349-2689041 sempre, solo se c'e` campo


