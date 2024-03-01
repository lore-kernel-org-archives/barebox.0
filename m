Delivery-date: Fri, 01 Mar 2024 10:54:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfzax-001TkP-1T
	for lore@lore.pengutronix.de;
	Fri, 01 Mar 2024 10:54:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfzaw-0002zz-Ro
	for lore@pengutronix.de; Fri, 01 Mar 2024 10:54:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:To:Subject:From:MIME-Version:Date:Message-ID:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Y1MlIdc8x1ZYeV1jNrLvKJ/7G+rdXc9Ajmdbc579KYo=; b=s0/F33+kEgBnyA2m+nFQV0Si2G
	iYZlpcKoyc7gS7+W1EiCRSf1idmkIdyPi9RVfNDH/AQXNUL+wrOU+ny4YBpTKD8KLN4MDL+IBL/8o
	uKXhCgkrPto6lz1o4QPhlcvvmSpklAk4G8qmxNdwUK8jdqTve3p23soikhN4E9lGjZYKkFUWcnr8n
	r1uUHm60UO6/4FQC2qYQPd2EL6XJwaSMu47jaQV9lq3EkgDv/hm+fz18E5olto7Y/h0Bv76NFSs5/
	lVzYFwBuk2dO+XFYFsWAnALelGzBmsgsJRubk7aZTfFyOD/2Mhode3gIqsxvZrbON5DHADHvKc3Cn
	kZDvScNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfzaO-0000000HFlQ-2lz5;
	Fri, 01 Mar 2024 09:53:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfzaL-0000000HFjU-36rP
	for barebox@lists.infradead.org;
	Fri, 01 Mar 2024 09:53:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfzaJ-0002rb-47
	for barebox@lists.infradead.org; Fri, 01 Mar 2024 10:53:43 +0100
Message-ID: <7e61ecb1-aeb7-46d7-b55e-472ba9b1057f@pengutronix.de>
Date: Fri, 1 Mar 2024 10:53:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_015345_816078_92E5D0E5 
X-CRM114-Status: UNSURE (   7.40  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Temporary outage of Git-over-https at
 https://git.pengutronix.de/cgit/barebox/
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

As some may have already noticed, the git-over-HTTPS upstream is currently
non-functional:

  $ git clone https://git.pengutronix.de/git/barebox
  Cloning into 'barebox'...
  fatal: remote error: FATAL: R any barebox webserver DENIED by fallthru
  (or you mis-spelled the reponame)

This is being fixed. If you need to fetch the newest master or next state
in the meantime, please use another protocol or the Github mirror:

  git clone git://git.pengutronix.de/barebox
  git clone https://github.com/barebox/barebox


Cheers,
Ahmad
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


