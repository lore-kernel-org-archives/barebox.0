Delivery-date: Tue, 20 Feb 2024 14:54:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcQZx-00G4ur-0T
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 14:54:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcQZw-0008TU-Ka
	for lore@pengutronix.de; Tue, 20 Feb 2024 14:54:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gjXw/r90bnDSY2iOkS+LgboYyqMR7ADGq4PW/nt8bzU=; b=NQ0E4IqjHKqnqZOrWGMhe+jaGJ
	TznMsklCvv4dS+lY6/7KQ5E+E53CoQfQiPcvavKHvm3PZDozG5gg8iQ0dT088j03jhR1FUS1SZj/g
	eLEmQdOkF6sVWI63VeF/7C/VBDTfMGRxLtofVKS5ngmNaGF3TuhWA9ZKLl6doWKafyLA64swPBUus
	VKYx/gYMFkyW0eunpPqb2uicHqI5pF/DcHVAHh/lrsuE1VwtrK3ylNsi9PFQLGcZ+VzCb96r+bKui
	gdzUIa+V6uH6yv6zedgvaXEm+GI+32u60L1QN+rBEsIElK0BHdgLoBDU5rMDgZs35PcZCtPrs+FSE
	uAS69laQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcQZJ-0000000EzNF-0Shk;
	Tue, 20 Feb 2024 13:53:57 +0000
Received: from mail.gnudd.com ([93.91.132.248])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcQZF-0000000EzLF-32b6
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 13:53:55 +0000
Received: from rubini by mail.gnudd.com with local (Exim 4.94.2)
	(envelope-from <rubini@arcana.gnudd.com>)
	id 1rcQZ9-00081T-3Q
	for barebox@lists.infradead.org; Tue, 20 Feb 2024 14:53:47 +0100
Date: Tue, 20 Feb 2024 14:53:47 +0100
From: Alessandro Rubini <rubini-list@gnudd.com>
To: barebox@lists.infradead.org
Message-ID: <ZdSu671i2n4RQPoz@arcana.i.gnudd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: GnuDD, Device Drivers, Embedded Systems, Courses
In-Reply-To: <20240220004316.fdc79907089c7358a1e67f62@gmail.com>
References: <20240220004316.fdc79907089c7358a1e67f62@gmail.com>
  <CAAvCNcCZhS8mkvdgcJ2L-eiur+OxgWEXRLnadO_HFyHfSi7WFA@mail.gmail.com>
  <a154ae13-86e1-4c2b-9c38-3774fde6a6c8@pengutronix.de>
  <20240205125900.c4b182f57b6efe0152beee24@gmail.com>
  <90de314f-b7a7-4b49-8c72-ec45aa3d38e2@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_055353_781184_BA28F79C 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: NFSv4 boot support?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

>> This hasn't
>> seen development activity in 5 years.
> 
> Please see https://github.com/virtualsquare/picotcp

But the TCP/IPV4 standard didn't change, either.

>> lwIP on the other hand still sees active development.
> 
> I agree with you. It looks like lwIP is more popular than picotcp.

Sure. It's older and it has a loyal (or addicted) user base and
commercial support. Or it just needs more commits because it'w worse and
full of bugs.

As far as I know, lwIP is horrible code, difficult to integrate and
maintain, while picotcp is designed in the right way (although I admit
I only looked at the former, about picotcp I only talked with the main
author without looking at the code).

I'd love to add mqtt to my microcontroller projects, where I have udp
but no tcp yet, and I would never rely on lwIP. That's just a personal
opinion, but I'd better not rely on the date of last commit to pick
or not pick a library.

Regards
/alessandro


