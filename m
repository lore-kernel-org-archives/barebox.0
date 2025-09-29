Delivery-date: Mon, 29 Sep 2025 09:54:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v38i5-002LTA-2e
	for lore@lore.pengutronix.de;
	Mon, 29 Sep 2025 09:54:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v38i5-0004mw-7K
	for lore@pengutronix.de; Mon, 29 Sep 2025 09:54:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EzGQA/8NBDZED5j4suPTYzgP1LKJw6S3saxJV9fTzco=; b=UazcPUem2iMQf/7A+4oArO3KjI
	dlpw2W0h+BKNKyHYTV/4z3sPERP+ksP8YXKPr8O9U9xH58BpuZZdPoOB7h+7zPKA0efJhsHtqvcZn
	E9CBUwzJyp5gvUzw0FMR2p6NXzycZ6/kNgdL+ZNVRgmQZaZ3SDuPeXpb5iQEZAM0sBmnKFXVaqpHq
	x8pI7JOlt33dQEkvKsNllp/K6KF1ZVBQhlyTddeftY9z95QrANRIDI78m8roakIHsgefv0MZVfMQg
	Ewv52sZrYGeqs5DZGEgYnTqw1+GG8n36AbuSU3+mb2a23mUhCKQJNnIwN1csrm2hR0R0OUK5WV18c
	O/iDtgvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38hf-00000001gpW-3q0Y;
	Mon, 29 Sep 2025 07:53:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38hc-00000001goY-3yKK
	for barebox@lists.infradead.org;
	Mon, 29 Sep 2025 07:53:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1v38hb-0004b0-4Q; Mon, 29 Sep 2025 09:53:43 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1v38ha-0012Wo-2U;
	Mon, 29 Sep 2025 09:53:42 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1v38ha-002X8I-2B;
	Mon, 29 Sep 2025 09:53:42 +0200
Date: Mon, 29 Sep 2025 09:53:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Tobias Waldekranz <tobias@waldekranz.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Message-ID: <aNo7BmtGiZuxWMc-@pengutronix.de>
References: <20250926-tlv-integration-v1-0-45dc68b9b602@pengutronix.de>
 <20250926-tlv-integration-v1-3-45dc68b9b602@pengutronix.de>
 <bd290731-fc60-4ec0-b091-cef811d4e057@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bd290731-fc60-4ec0-b091-cef811d4e057@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_005344_986279_645D8850 
X-CRM114-Status: GOOD (  23.83  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/7] test: move dm-verity testdata generation to fixture
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Sep 26, 2025 at 04:25:49PM +0200, Jonas Rebmann wrote:
> Hi all,
> 
> On 2025-09-26 12:14, Jonas Rebmann wrote:
> > Simplify barebox integration test setup by moving logic away from
> > scripts/ and .github/.
> > 
> > Instead of generating testdata in separate scripts, they should be
> > implemented as testfs fixtures which are automatically ran as part of
> > the test suite.
> > 
> > Includes error handling and cleanup.
> > 
> > Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> > ---
> >   scripts/generate_testfs.sh | 44 ---------------------------------------
> >   test/py/test_dm.py         | 51 ++++++++++++++++++++++++++++++++++++++++++++--
> >   2 files changed, 49 insertions(+), 46 deletions(-)
> > 
> > diff --git a/scripts/generate_testfs.sh b/scripts/generate_testfs.sh
> > index 1c358ff846..3c200bd401 100755
> > --- a/scripts/generate_testfs.sh
> > +++ b/scripts/generate_testfs.sh
> > @@ -28,47 +28,3 @@ generate_fit()
> >   	       ${KBUILD_OUTPUT}/testfs/barebox-gzipped.fit
> >   }
> >   [ -f .github/testfs/${KBUILD_DEFCONFIG}-gzipped.its ] && generate_fit
> 
> It took me some time to figure out why this patch broke CI.
> 
> With the set -e in this script, this last line of fit generation logic
> should have been
> 
>   [ -f .github/testfs/${KBUILD_DEFCONFIG}-gzipped.its ] && generate_fit || true

I fixed this up in -next so that we no longer have this in the tree when
you send your next series.

I've rewritten this to:

if [ -f .github/testfs/${KBUILD_DEFCONFIG}-gzipped.its ]; then
	generate_fit
fi

for better readability.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


