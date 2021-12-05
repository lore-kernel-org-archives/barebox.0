Delivery-date: Sun, 05 Dec 2021 23:57:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mu0Rz-0007NC-M9
	for lore@lore.pengutronix.de; Sun, 05 Dec 2021 23:57:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mu0Ry-0006aj-PI
	for lore@pengutronix.de; Sun, 05 Dec 2021 23:57:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rfl2up3EhGjZOZxGKtEvrhVr633q3jxBsff24KyCatA=; b=vAV241701HosLl
	4RXcLnzr5LQvMP+za3S8TRTUIDSCD0vUkL1qTpUZ7sUEDG9u5EwfwGyJ+7WsEnt9UKyi4hdRXbaBf
	/yx9EfcVIoG2Rl20VQby0Spug8Eb5hs3lCEn1giJKO5a7HCAOIxvl8MxDniOPKemBIsJSZV33cFLQ
	g5ZuRmM9aSuHwzFBaxOIfCWlU3idTkkkEv4Dj3x8JrrUAcrhiDMnw7iXCnFFRbIPTt7c3sgoIS2f/
	hpNQ1dzXkYxJkL6D8ib0g8IpFQ5jraJuFHtnVkwVtlhJTMiDIo/mEUeQbe8KXhEfMyVR1YKmGsD0X
	ePI8Ea6xgwd/QdtYPCYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mu0Q1-0026LC-4z; Sun, 05 Dec 2021 22:55:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mu0Pv-0026Ks-3Q
 for barebox@lists.infradead.org; Sun, 05 Dec 2021 22:55:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1mu0Pq-0006OP-NV; Sun, 05 Dec 2021 23:55:30 +0100
Received: from rhi by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1mu0Pp-000184-QJ; Sun, 05 Dec 2021 23:55:29 +0100
Date: Sun, 5 Dec 2021 23:55:29 +0100
From: Roland Hieber <rhi@pengutronix.de>
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: Trent Piepho <trent.piepho@igorinstitute.com>, barebox@lists.infradead.org
Message-ID: <20211205225529.5rf5zqpbg7trovst@pengutronix.de>
References: <9215c9815f25cc3328a05d6c9553ac36@inside-m2m.de>
 <CAMHeXxOoXjqtSGXdE73oROUk9ybFmFv7gi8PtzLsKn=iH+FXLA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMHeXxOoXjqtSGXdE73oROUk9ybFmFv7gi8PtzLsKn=iH+FXLA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211205_145535_172093_B6BD395E 
X-CRM114-Status: GOOD (  16.66  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Howto implement bootchooser <-> rauc interaction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Dec 03, 2021 at 09:52:00AM -0800, Trent Piepho wrote:
> On Fri, Dec 3, 2021 at 4:42 AM Konstantin Kletschke
> <konstantin.kletschke@inside-m2m.de> wrote:
> > The documentation looks very good and comprehensive overall but may be
> > its me not getting
> > the part how and where the shared data is properly stored.
> 
> You should add a node of "barebox,state" to the *Barebox* device tree.
> Barebox needs to read state when it boots to determine the partition
> to use and set boot attempts.  You also need in aliases { state =
> &your_state_node: }: so it knows which state node it should use.

FYI, there are a few more pointers in the docs too:
<https://www.barebox.org/doc/latest/user/state.html>

In short:  barebox state is meant to be read (and written) from the
Linux world too, in contrast to the barebox env, which is only meant to
be used by barebox itself.

You probably also want to delete your bootchooser variables from the env
so they don't cause confusion :-) You can inspect the state variables
with 'devinfo state', and set them via 'state.variablename=value'. They
should also show up in 'global'.

 - Roland

-- 
Roland Hieber, Pengutronix e.K.          | r.hieber@pengutronix.de     |
Steuerwalder Str. 21                     | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

