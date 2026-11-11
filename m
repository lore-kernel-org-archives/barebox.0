Delivery-date: Wed, 11 Nov 2026 17:55:04 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRBbE-009kng-0k
	for lore@lore.pengutronix.de;
	Wed, 11 Nov 2026 17:55:04 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0D8812010CA
	for <lore@pengutronix.de>; Wed, 11 Nov 2026 17:55:00 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ydxsirOJ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=B6BklgER;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794416100;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=rOiwLJDcOkdkvzQAYszA3Xu4CQYqK0fxjBDkIQUHfRM=;
	b=HpAEZNMlMIkX13AWC0pAqwA8EP4zN7IP+6c217n4w57GUGFpD6hozSsQcuhTIClQn/mUPV
	dzj0f8si4ADNGpFkh6o/ItCFbQLQhO4zu4Pmz6WOVz7AxKCdcgGQvt6mzmXla7WGmTylcg
	bAqiH+vEw3geY6qq1zTGe2saGWbfMnlWUuh22UWskK6xqwNLt2FeTjTRzGImE2iaXg96b+
	bTxbQvNLOx66m1Fo76hY3WZ5ChGpQ0/mWx07mz8QhV6KVLB6iMfPFJfU6vo9Sw9EZm+1R6
	XQacJAjf+ShuWTdATZT278rXHkQmq1v9xAmRDhnhsJe3R+wN2FjU9J1tpniexw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794416100; a=rsa-sha256;
	cv=pass;
	b=NLArI5TGS2skms79LE51AfDaHN8WViR73lsyZ5DuHD2R3XBY/mXOYOraxVl+VZg6YAU/1h
	MlQVNx3kYdEP9v1rHUGMaQPib9hPUwYDi/pppFY/yA5Dk/WwUBXJGhXTLrnT8F1HFJSHgF
	MkBZiE/GCJedaaBuglBCW1gLNdPb7f3TGURvxj3xxzTY6oncnPu6i6rrTTUz+JNEXdQdxe
	X8yIKlIQR5wuehoUIoCDQ4ZPkXrydSeVUV+thl7hUAGqamysuwRNExvkv9y6Trl8S0zvD8
	xNmjnrZ5qfKdDeKyZkjrseZFyJXcIk/U2iWE2mTRkC7iEi9aIsjE4ASSfd+o8Q==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ydxsirOJ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=B6BklgER;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=rOiwLJDcOkdkvzQAYszA3Xu4CQYqK0fxjBDkIQUHfRM=; b=ydxsirOJQXIeeg
	CnsvgF3CU2flql3WmIh69i1QMnJWrput+n4MRr+KzQaqpMulHFOpGEuo7VBuAR1oIDJF+jAO2M7BW
	5EwPKc/j/Rq5sqsCLoj83szYXOYPnFh9rh/Ap5pieS/rR30njIL4JwJMuCbJjcwydrlHxp2chuvG9
	RBRpOY7pY8z1djcFTIppr1tCgz2RuQeF4oZ0QeAfVBgOH8JzCGq/6ZkXh5f0ZX2UVerhAUzCfeH0b
	k7PrCllWMKu5ucbP+FABFhBGvivB3rGSeBSKuFlKCJzrlBSgAM3f9th+WOK6WUbrKlnE4JFWqfZjG
	G12wX8ghZEK9gbooFEQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRBZm-00000007Fh6-2Lwx;
	Wed, 11 Nov 2026 16:53:34 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRBZj-00000007FgU-31Ha
	for barebox@lists.infradead.org;
	Wed, 11 Nov 2026 16:53:34 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D2F642010CA;
	Wed, 11 Nov 2026 17:53:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794416003;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rOiwLJDcOkdkvzQAYszA3Xu4CQYqK0fxjBDkIQUHfRM=;
	b=B6BklgERWFWEZV5QofHhK2QOwbWwUhqFen7HRgTPoGniQcuyyPgoGc1xN1WIM22icqJ+uG
	db16/E/bkszcXJQ94fLbP01PhbwHrxGilqGbcP7iY8zuDwgLYWcCdy2f/Rt/x6PEjJeeAp
	Xe5RCshAcpExbGewZ+u3Gg3WBHBBpJqhMrWh39035b+o7Ys6QkyNW1rwn9WzzQiOdtjNf6
	up/VItG0B+4xZ/eWFIx+FiVRiAcW3IldB9INXsbBsAR5WaMtRZ0e3B5/Ypg0lhI5aox5qb
	/S/ub9TtoYHE0Y63rjvByYyKHdOv5dOhOMXBkOrgUK2Ho5h9wOwsj/b17iNppQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794416003;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rOiwLJDcOkdkvzQAYszA3Xu4CQYqK0fxjBDkIQUHfRM=;
	b=YkFq0JathG90G3r1h9rN1YvM9ZtZFcwwsMoLY3tGv5WwE7oBRcEmq4yhm6kQrxB7QUg6ci
	sVSNMSX26aZaoq1NTLL490do9YWfdkyiIDpOztRwRhvXv6nEWq4gOLmm/OSZeHrizxp+C8
	M7+QqVQQd0YSmeIA/V0c9+WdAzzleOVM8xQ59UBp3hlF7m5dOBawJM/S4x5iPAeoa7vT0+
	rukm36+fHDW9Q0bxxfh4ldsw86QIZ5BnqMYtzYb7HHVRvDa/VliPLg7BCQSHKQDDmKgnxD
	pcEccAYB0ZgibGcNJfw9tS5e85uDK6GziGxLYhJ9GplEcj5mgc6PMOvrb2o3rQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794416003; a=rsa-sha256;
	cv=none;
	b=YRAHlWAhRITbYMsoUKb88JAGJH/HShFIurBaqavXjx5h6rZcPsK7TfX4L0rgcJFpR501vX
	qcdi16Cf/4OsaHl0L/myoWwYnPtM0HdARSB0J3PKgdwHgnOOeimxUEpiLWjIRDO59fsi67
	Nru9RcZgu2Zjqu6V7n+9MPAPX/RO2EeSFWaj7KAC2k2durrROcHI4HjVv04pulGLZee1tb
	DMe+VyBPiwiP0L3KhLW+9a3mGLEoIWSJuc7aVuX/dii3mfT9q1x7S8HePHu3NwQur2Gpqx
	Cd14bdMagPHN1VEJLHARySYNTRJsjNpb8/PLxz3tr2HIqZ5i/MH0qbEpzRfwnA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Message-ID: <4009993a-8e57-4ffb-91b4-6e226dae0bf5@pengutronix.de>
Date: Wed, 11 Nov 2026 17:53:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] ARM: boards: kindle mx50/mx6sl: remove bootm -c
 option
To: Alexander Kurz <akurz@blala.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 barebox@lists.infradead.org
References: <20261110212842.29724-1-akurz@blala.de>
 <20261110212842.29724-2-akurz@blala.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261110212842.29724-2-akurz@blala.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_085331_955742_41BB2E8A 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 11/10/26 10:28 PM, Alexander Kurz wrote: > Support for
    the bootm -c option has been dropped with the 2026.10 release. > Remove it
    in the boot scripts as well. > > Fixes: 93e0ed81f13a ("commands: bo [...]
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 0D8812010CA
X-Stat-Signature: yi8pwji1funo8fi158hizby3es6rytj5
X-Rspamd-Action: no action



On 11/10/26 10:28 PM, Alexander Kurz wrote:
> Support for the bootm -c option has been dropped with the 2026.10 release.
> Remove it in the boot scripts as well.
> 
> Fixes: 93e0ed81f13a ("commands: bootm: remove -c and -s options")
> Signed-off-by: Alexander Kurz <akurz@blala.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks and sorry for the breakage. I wrote a migration guide entry but
it didn't occur to me to check if we have users in-tree, d'oh...

> ---
>  .../boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel   | 2 +-
>  .../boards/kindle-mx6sl/defaultenv-kindle-mx6sl/boot/mmc_kernel | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel
> index b8d93be593..3109f137bf 100644
> --- a/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel
> +++ b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel
> @@ -12,4 +12,4 @@ armlinux_system_serial="$global.board.ocotp_serial"
>  
>  global linux.bootargs.dyn.root="root=/dev/mmcblk0p1 rootwait ro"
>  
> -bootm -c /dev/mmc2.kernel
> +bootm /dev/mmc2.kernel
> diff --git a/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/boot/mmc_kernel b/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/boot/mmc_kernel
> index 518110b8fd..5d451276e2 100644
> --- a/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/boot/mmc_kernel
> +++ b/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/boot/mmc_kernel
> @@ -8,4 +8,4 @@ global.bootm.boot_atag=true
>  global linux.bootargs.dyn.log="log_pos_goal=0x8fff0000"
>  global linux.bootargs.dyn.root="rootwait root=/dev/mmcblk0p1 ro"
>  
> -bootm -c /dev/mmc1.kernel
> +bootm /dev/mmc1.kernel

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



