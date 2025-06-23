Delivery-date: Mon, 23 Jun 2025 19:23:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTksw-00AKto-0Y
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 19:23:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTksv-0003iD-Ik
	for lore@pengutronix.de; Mon, 23 Jun 2025 19:23:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OmgfedkEJ5hFj7G39G1R+ci/FW127m3ZPSP3EVOvxys=; b=qahN3tvlSLUoNu2Fh5tqkFL5gf
	dQjgLc9H9Kmvw/KZHqUUpuqZJbb3hGIyDunfJr9LhvrHfx5WFNmTlazro+XvTmcTXvZDzWoH+WOF1
	S38nFIVg1LZD6sQuUgwKUycF3bbAk88dw8M8+/VAVZS8j7B0u6lW0DkNJNM58sUl3441rGrPEdzkt
	S7EVnn7pSN4g45fqFUO/feqeLZVHFjNh4wJMRglgw33D0xhQoymG0i1gdD94ks572SoFLXiVKmXBy
	JODcNOqxJe/l2qxIvc9PgGVs3EwQEgIqA4yXsbbx6gJVbLJB/x6KVpGQXiSIG0QpOSj5U2IRcZjlr
	+uLDRSLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTksQ-00000003XaN-2uFA;
	Mon, 23 Jun 2025 17:22:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uThmO-00000002yCR-45SJ
	for barebox@bombadil.infradead.org;
	Mon, 23 Jun 2025 14:04:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=OmgfedkEJ5hFj7G39G1R+ci/FW127m3ZPSP3EVOvxys=; b=SBVP6DxCL7K128E7aHPq3trnTX
	2kZ9Hqg/7oWmf0GDmUnbKFe0hFRJsoGyyEAeZKxcs8fO73ndazx+5Egp6hV59vzaVcbtZ8/l7MZ5F
	T/GdO6cJ34yUvXjuZyaDnf5jh7B5zYg1uG54eUuIlDFtGPXfgnIsZWS6hV3GYUbeikCz3dXwY/dY1
	/i9I+jOk05D/GTi9lvgPyBhSxHAAlX34tDY0pvkXGqurgfxW79VWuLzDUa25aXKpQ50zE9r2gWPrJ
	grj1WG9vHrbdkpaQZR5WyqiE+oHDhMNtCtTH2/MDuIDmH6lakFcnn1eqtmRVEnVnibXzz4PGcOyqr
	ue/tBl7A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uThmL-00000005EdI-3ttm
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 14:04:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uThmK-0001T0-Rq; Mon, 23 Jun 2025 16:04:08 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uThmK-004xOZ-1j;
	Mon, 23 Jun 2025 16:04:08 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uThmK-00DDTM-1O;
	Mon, 23 Jun 2025 16:04:08 +0200
Date: Mon, 23 Jun 2025 16:04:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andrei Lalaev <andrey.lalaev@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <aFle2J_lRoNzBBKp@pengutronix.de>
References: <20250611175645.144025-1-andrey.lalaev@gmail.com>
 <aEqK9IXf94hx9QnX@pengutronix.de>
 <925212c2-6c48-402d-8301-e06b62061248@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <925212c2-6c48-402d-8301-e06b62061248@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_150410_087111_657EF29B 
X-CRM114-Status: GOOD (  28.03  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: fastboot: send FAIL if variable does not exist
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Jun 12, 2025 at 04:19:36PM +0200, Andrei Lalaev wrote:
> On 12.06.2025 10:08, Sascha Hauer wrote:
> > Hi Andrei,
> > 
> > On Wed, Jun 11, 2025 at 07:56:45PM +0200, Andrei Lalaev wrote:
> >> According to doc [1], new implementations should send FAIL if the
> >> variable specified in the getvar command does not exist.
> >>
> >> [1]: https://android.googlesource.com/platform/system/core/+show/refs/heads/main/fastboot/README.md#121
> >>
> >> Signed-off-by: Andrei Lalaev <andrey.lalaev@gmail.com>
> >> ---
> >>  common/fastboot.c | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/common/fastboot.c b/common/fastboot.c
> >> index 56bc4e82c4..3df3c227a3 100644
> >> --- a/common/fastboot.c
> >> +++ b/common/fastboot.c
> >> @@ -372,7 +372,7 @@ static void cb_getvar(struct fastboot *fb, const char *cmd)
> >>  		goto out;
> >>  
> >>  skip_partitions:
> >> -	fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "");
> >> +	fastboot_tx_print(fb, FASTBOOT_MSG_FAIL, "");
> > 
> > With this a "fastboot getvar all" fails.
> > 
> > I fixed this up as below.
> > 
> > Sascha
> 
> Hi,
> 
> Thanks a lot for the fix!
> To be honest, I had only checked the original patch on Barebox 2025.02 and then
> just backported it to the latest master :/
> 
> Would you be willing to take primary authorship for this commit?
> Since you've reworked it completely, I think that would be more appropriate.

I would have done it if I had read your response in time ;)

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


