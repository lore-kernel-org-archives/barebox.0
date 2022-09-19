Delivery-date: Mon, 19 Sep 2022 15:59:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaHIy-009cY2-30
	for lore@lore.pengutronix.de; Mon, 19 Sep 2022 15:59:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaHIw-0003O4-Gz
	for lore@pengutronix.de; Mon, 19 Sep 2022 15:59:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lnplYLjUEpV9ZuWqwJAR6Hk2i732+/ZlM77fHpynr1Q=; b=n2YCo0Sgmcr2jMJn3odXKXuo24
	WhEaQfMys4f81Caj/amhVU7zZn+pZhGs45jPANzX0J+t5KAb1DXmx+BpcpVxxRkkG0WcLebN+wi1R
	MAAbinXSVJYSkvwEZg6kH+xICwh48/oPHp7l0SUbbCrCNITXvbRU/khiQALrM9Ejd6a4Xr5DmSFcn
	ASKvu1AoOqt2JRLIopZbcEyC5VNGl/XMwd5+DyMHIBIHOnG8/c9nS06doyscPK16tsITn5wZWZzBf
	isQgka4nTONjqOuPjRyJALQ5AiD4mItmwOWZMtAN05b3GHZpAFRZGN2rmQ2ZBk5WR8W/59H1unjl/
	JMRupZsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaHHd-00By53-4o; Mon, 19 Sep 2022 13:58:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaHHX-00By4E-VF
	for barebox@lists.infradead.org; Mon, 19 Sep 2022 13:57:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oaHHW-0003Bo-4Q; Mon, 19 Sep 2022 15:57:54 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oaHHT-0007X3-Uz; Mon, 19 Sep 2022 15:57:51 +0200
Date: Mon, 19 Sep 2022 15:57:51 +0200
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220919135751.GD6477@pengutronix.de>
References: <ly7d1z1qvs.fsf@ensc-pc.intern.sigma-chemnitz.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ly7d1z1qvs.fsf@ensc-pc.intern.sigma-chemnitz.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_065756_028701_64D66A1C 
X-CRM114-Status: GOOD (  26.31  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: malloc() alignment on 32 bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Enrico,

On Mon, Sep 19, 2022 at 02:37:59PM +0200, Enrico Scholz wrote:
> Hello,
> 
> on an iMX6ull I stumpled across
> 
> | zstd_decomp_init:536 workspace=8ff1a004+161320
> | ERROR: initcall ubifs_init+0x1/0xc4 failed: Invalid argument
> 
> which is caused by
> 
> | static int zstd_decomp_init(void)
> |	void *wksp = malloc(wksp_size);
> | ...
> | ZSTD_DCtx* ZSTD_initStaticDCtx(void *workspace, size_t workspaceSize)
> |    if ((size_t)workspace & 7) return NULL;  /* 8-aligned */
> 
> 
> Trivial fix would be 'memalign(8, wksp_size)', but is it really ok that
> malloc() for 32 bit has only an alignment of 4?
> 
> Relevant code seems to be in common/tlsf.c
> 
> | enum tlsf_private
> | {
> | #if defined (TLSF_64BIT)
> | 	/* All allocation sizes and addresses are aligned to 8 bytes. */
> | 	ALIGN_SIZE_LOG2 = 3,
> | #else
> | 	/* All allocation sizes and addresses are aligned to 4 bytes. */
> | 	ALIGN_SIZE_LOG2 = 2,
> | #endif
> 
> 'ldrd/strd' require 8 byte alignment which might break with such
> alignment.

If you had asked me which alignment we have then I would have said it's
bigger. OTOH I never received any reports about insufficient alignment
on ARM or any other 32bit architecture.

I suspect we could just drop the check without any harm, but that's just
a gut feeling because we never had any alignment issues.

BTW are you sure ldrd/strd need 8 byte alignment? I just tested it with
the following patch and this works without problems. I verified the
compiler indeed generates ldrd/strd for accessing the 64bit field.

Sascha

-------------------------8<----------------------------

diff --git a/common/startup.c b/common/startup.c
index f53b73f81a..f261b1bdac 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -334,10 +334,31 @@ static void do_ctors(void)
 
 int (*barebox_main)(void);
 
+struct bar {
+	uint64_t foo;
+};
+
+struct bar *myfoo(void)
+{
+	struct bar *x;
+	void *ptr;
+
+	ptr = malloc(16);
+
+	ptr = (void *)((unsigned long)ptr | 4);
+
+	x = ptr;
+
+	x->foo = get_time_ns();
+
+	return x;
+}
+
 void __noreturn start_barebox(void)
 {
 	initcall_t *initcall;
 	int result;
+	struct bar *b;
 
 	if (!IS_ENABLED(CONFIG_SHELL_NONE) && IS_ENABLED(CONFIG_COMMAND_SUPPORT))
 		barebox_main = run_init;
@@ -355,6 +376,9 @@ void __noreturn start_barebox(void)
 
 	pr_debug("initcalls done\n");
 
+	b = myfoo();
+	printf("V: %lld\n", b->foo);
+
 	if (IS_ENABLED(CONFIG_SELFTEST_AUTORUN))
 		selftests_run();
 
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


