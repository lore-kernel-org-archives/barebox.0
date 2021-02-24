Delivery-date: Wed, 24 Feb 2021 14:24:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lEu9R-0005Xl-Oj
	for lore@lore.pengutronix.de; Wed, 24 Feb 2021 14:24:25 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lEu9Q-00037P-Vj
	for lore@pengutronix.de; Wed, 24 Feb 2021 14:24:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Mv63RBhev3+p0VWcemxSwV7jCNLNa/4ot3EOOZYwG00=; b=c19mJD1WIXblfqu1z3qDtxfvjV
	aI1nCul679RV6O0IO5JTOJLg3/md8gY1cFBZa1Ir81uAR5OFM+QVVP6nqltAPSJ3LP1jqcb/xMQf0
	mgusDQEFBdsrByxqL1Jy+RZ8/sxUK5xTM7YS2n2Z/slBqdnABoMXaFQ3zrRADsjnPkp94MK62CWcd
	q81ZmqLnuVZtDCIq0RZeCUmugsbDm2F2AVoE1X1oJWBjzDo78/Ol/100j/KqH6HyQ4IxoRWxvxK/s
	T8d0M8ojZbxJpAw1NpO0CDqz/MtG42kMvJ8j7BD1boAcHCS7mxsaK0SkvyyftiR+YesxsV9jO4QmE
	KWTNwWsA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEu7o-0007Ri-DJ; Wed, 24 Feb 2021 13:22:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEu7l-0007RK-Q2
 for barebox@lists.infradead.org; Wed, 24 Feb 2021 13:22:42 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 helo=[IPv6:::1]) by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <r.czerwinski@pengutronix.de>)
 id 1lEu7i-0002zm-QG; Wed, 24 Feb 2021 14:22:38 +0100
Message-ID: <b6704ce8e092b1ae6f975d755c969ecb64f6428a.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
Date: Wed, 24 Feb 2021 14:22:38 +0100
In-Reply-To: <20210224101545.15009-1-m.felsch@pengutronix.de>
References: <20210224101545.15009-1-m.felsch@pengutronix.de>
Organization: Pengutronix e.K.
User-Agent: Evolution 3.38.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210224_082241_857848_3C1BF3F3 
X-CRM114-Status: GOOD (  11.23  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] bbremote: fix the exit usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On Wed, 2021-02-24 at 11:15 +0100, Marco Felsch wrote:
> Unlike the sys.exit() function the builtin exit() function don't take an
> argument. Fix it by using the exit function from the sys module which is
> already imported.

This is not entirely correct, the builtin exit() function also takes an
exit code and works fine when I tested this:

  $ python3 -c "exit(1)"; echo $?
  1
  $

Nevertheless the documentation [1] says that sys.exit() should be used
in scripts. So the patch is fine, but the justification not entirely
correct.

[1]: https://docs.python.org/3/library/constants.html#constants-added-by-the-site-module

Regards,
Rouven Czerwinski



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

