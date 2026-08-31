Delivery-date: Mon, 31 Aug 2026 10:39:09 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x0xXo-009DBM-2J
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 10:39:09 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A9E332018C1
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 10:39:08 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SWYSGv04;
	dkim=pass header.d=waldekranz-com.20251104.gappssmtp.com header.s=20251104 header.b=iqCOMGCX;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Date:References:In-Reply-To:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sdSGoYShoQD/cMlqrf802qlPi4LWNpbR1K2d3HRDH8Y=; b=SWYSGv04QKaikPpUsaXnpAH7NZ
	GfZBWFPeKVlCEVsgkUenoA0L8axt5GzP71TPv1CCyIoApXUbZ0rpWhbgZB/LI8SJZHRLOsbHYCqfZ
	CAv9IbwW4RN0/PBprooFbGh9qgrZg4iDDtHm1k/mPjwxpB1I3hVNXpdbW4efer2jb7b7METF+SzKM
	LlTXw9+yhuozkxSUbBmsPo5NlI4At0Aft9uP2zP3wzlqoiRPe9zjrFmws0bCDPMU39udTXiA7kmrw
	QIavvlWAFWvAg8mYIwsHGitN28SIt7cAOVSGeaZmH2+l9qXM+wLNojMVT6+vgXi5R/APS+PjeuONs
	LSRsfS6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0xWW-00000008v4i-2o35;
	Mon, 31 Aug 2026 08:37:48 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0xWP-00000008v46-0o6X
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 08:37:43 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-6a5f968ada7so6409551a12.0
        for <barebox@lists.infradead.org>; Mon, 31 Aug 2026 01:37:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20251104.gappssmtp.com; s=20251104; t=1788165458; x=1788770258; darn=lists.infradead.org;
        h=content-type:mime-version:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=sdSGoYShoQD/cMlqrf802qlPi4LWNpbR1K2d3HRDH8Y=;
        b=iqCOMGCXH27TqPV/5xiV90+93N5/oJ4IyDGUbAEzSTV7ysP+vHAdWLpASLUnYKzm4B
         ng4LAqO8uxF78UVfEPkTYJicLBcyU+mPLwQ7zkAodLaaF7D6UTyyHY6GnJyPdkNYSD8t
         Hw+k5dt+DuBMRpZobx8dGWHr63N4ePNAvokUpqj0uCF6zL4jUCj/MsqYDeo1tZnHAKqB
         ZwTVnylN5n+/6saSArFHnVXN/PdROlOz5BqWNcAKIRKl9icVOLjlWr6rIxuw8FHPnPc/
         Ngj4+4b0v7ohVx22u7yIvNLpM3K45GrASuPeFRxsNljurH+bJGJepTx2cqumBWT+rFgd
         eOkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788165458; x=1788770258;
        h=content-type:mime-version:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=sdSGoYShoQD/cMlqrf802qlPi4LWNpbR1K2d3HRDH8Y=;
        b=NG9qlWrN2PwvW9QmERtgwLceVfoQp0d8HfuwllB4bJkIblbf7lMkdpM4x1XyUn5PTS
         GnWjEbzPyNYbv8vvb/awqfFUGjj4xmjVkghdDUv4+gBNHPwwmzbUFj/5vxbhO7rmuWDl
         bWp2euPHwBwM3lW3q6JfV6krYkl8t3a/f5pFVPhfZMx19s/vrLexCZYUjwss2bI0Q+PZ
         6E5X+GiVEsI/DOVzywem3GCDXZ6cy4S2TYdCWFaN/nwHIjzW0m9S8j8zsrf5MBl+8fDz
         l1x7eSg8UV1PekiL+qMq+BcVhcq4Sbl1tmmzWuFCadQa8BBDJFpfk6vOxWe2iNiH65Kr
         8Amg==
X-Gm-Message-State: AFuF++kh3wx1bY9fzH25Y5QedtsBA1vL0FdCl0XD/6VhJ5gZ6nQvzSec
	Ht7kZBN77R1Oo+hm+NINI2LpOHO9WNrnZvM+IEHlZGHF7XrSe+TExkFuZc+b+KCd2e26yTox7sV
	5n+PC
X-Gm-Gg: AYBFou1L3iPL0P47TUe302mM1JqacxNrhCdeZwV0mr+W6gxQXMuEUpY55G7EHdW95LG
	to038mT2v4nSL7iN+BD0xHw9Dbq03mvzfAfTzfW3OsjRPi7TclTmQwhXB+uXlTU2n70dSbnSPk6
	4wci7MxOfMbqmFBxY8IMU6PuAKY/ahGTrLnmT2ZYk1p0W5ZCcuYzGiQNGcNVjJAsRBaEmyq0Ciy
	P1Hbd1gaK6cA/JSCj6645ESOcA9v0y2EvJNVKWc3gys/pLmNQ9bFFiJX9omBVKn8eW3wi47wIJ9
	wxvIczoQICsRalrxe4GnQOoSEc8MiDypFgrcyB0Brk38OipaLtQXBnhdAayxbUG5T0sxQXZvQ/q
	5BHPoBvc1Tkeu7VdCybWRD5gKZ4mD+oErSHpZ7dpYAdipCr6vHVgwv8lqRL0PWFaJCYtNoqiUxA
	1Vd/rmKXcspztf9oWzBoF34HNq805ZsB9N5WqC+Wx5vXaWSOvNLbZpGbUWQRMV2kfiyo4PTR3WI
	l0rnZOkV0NKQGIIr94P5jIYjDAaKmKoW76ll063CT7gmZ7UtG5dJ7tqMnuQQh7v9JwgeUnjUqCj
	CTo=
X-Received: by 2002:a05:6402:4549:b0:6a6:32e3:9bb with SMTP id 4fb4d7f45d1cf-6a64779d105mr3144903a12.11.1788165458293;
        Mon, 31 Aug 2026 01:37:38 -0700 (PDT)
Received: from wkz-x13 (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a611b5c4a7sm3275154a12.3.2026.08.31.01.37.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2026 01:37:37 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Subject: Re: [RFC next 0/2] dm: lvm: Initial Logical Volume Management support
In-Reply-To: <d66fbfb2-135d-439b-b53e-97f7ea21459d@pengutronix.de>
References: <20260824183203.3759144-1-tobias@waldekranz.com>
 <d66fbfb2-135d-439b-b53e-97f7ea21459d@pengutronix.de>
Date: Mon, 31 Aug 2026 10:37:37 +0200
Message-ID: <87ld9mofce.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_013741_812918_1D5F6B56 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Sascha, Thanks for taking the time to look at this! On
    fre, aug 28, 2026 at 14:10, "Sascha Hauer" <s.hauer@pengutronix.de> wrote:
    > Hi Tobias, > > On 2026-08-24 18:31, Tobias Waldekranz wrote: >> [...] >>
    If the overall structure is OK with the communi [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:531 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Rspamd-Server: mx1
X-Stat-Signature: mz8n9knyioohr86w3qhhip7uc39rpbhj
X-Rspamd-Queue-Id: A9E332018C1
X-Spamd-Result: default: False [-4.41 / 15.00];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,waldekranz-com.20251104.gappssmtp.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	BAYES_HAM(-0.00)[25.24%];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[waldekranz.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tobias@waldekranz.com,barebox-bounces@lists.infradead.org];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[tobias@waldekranz.com,barebox-bounces@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_FORWARDING(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	RCVD_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::531:received];
	DKIM_TRACE(0.00)[lists.infradead.org:+,waldekranz-com.20251104.gappssmtp.com:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action


Hi Sascha,

Thanks for taking the time to look at this!

On fre, aug 28, 2026 at 14:10, "Sascha Hauer" <s.hauer@pengutronix.de> wrote:
> Hi Tobias,
>
> On 2026-08-24 18:31, Tobias Waldekranz wrote:
>> [...]
>> If the overall structure is OK with the community and maintainers,
>> then the biggest remaining issue is testing. I have been surprised to
>> learn that the standard LVM tools will not operate on disk images
>> (without loopback mounting). Nor does there seem to be any other tools
>> out there that allows you to provision PVs/VGs/LVs without having them
>> "live" and attached to the host system. If there are any suggestions
>> here they would be very welcome!
>
> Would guestfish be an option? That allows you to call pvcreate/vgcreate
> on disk images.

Thank you, I had completely forgotten about that! I definitely think
that it would solve the problem.

You would be okay with bringing that dependency into the barebox-ci
container then? Do we foresee any issues with access to /dev/kvm or
things like that from inside there? I guess it would still work in TCG
mode, but might be slow?


