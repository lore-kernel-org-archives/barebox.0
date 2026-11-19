Delivery-date: Thu, 19 Nov 2026 17:19:26 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xU4r7-0019Tx-0j
	for lore@lore.pengutronix.de;
	Thu, 19 Nov 2026 17:19:25 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 336E6200F83
	for <lore@pengutronix.de>; Thu, 19 Nov 2026 17:19:21 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="Qa02+/00";
	dkim=pass header.d=gmail.com header.s=20260707 header.b=T6zMc8He;
	arc=pass ("google.com:s=arc-20260327:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=gmail.com
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795105161;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=6pAnK5vUhwyjA3T5PrOrTTENyVoE6EPn1VJUHDBrpvY=;
	b=LON4mMhSpJhPdNxriKlQJe9OopE5ug5MPPO3it9SNxLwuN2MKN6OwEjRbCS0b/hulJIVMf
	0swx2O1V0J3cj/7o1sWcOrcnbWAWjY7AjVFTG1UYR3jZRxSEistrpAQSaexx1/VRV+96f7
	FxMzXbcGt0U2EpyVFxhac/ue24hjEcKh8VEgdhB+J66fpViso4I7Vh6ESrMZTQka4J/DDK
	/a5Ct7q2xoe4T35jxEaiD1mV+LJ3yHLZpuOa7ufSfAa9M8orsSyeprOqi14yq5Pxm11Ev3
	tgDvlim2n1yeD2DqVUF2ZZXm+cjMO0zHgfnTxH/aZkpMEnZkGTLPXrDetAzC3w==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795105161; a=rsa-sha256;
	cv=pass;
	b=ISsnQwmieY3zOkc+F5AT4ckNnY0HwluoXdc+VMsQasIVvWdvrgXO9kjKix91Py0frPA3hz
	F6HiQbHaLv46MfloJ15y1qm4SbUbreia0MwBtBJ1d4qhQlHpu+Fs8iyQ07e6u+RMDtJQVc
	QEY5o9lYXhZzkzMxqewU6pnlxDUPMVqvjoqijubBuCk5mlUaOmcj5jxHvRy3Bdqzq/46SB
	te75KrSZ4K1qxME1v3iV1h98M5s460DrlsPP+WTCLiwe9L2iEZLT7RYQuWRH3GOmykxCwp
	dj+HPr6R3lJkY9wf4XP///w5DZXUfeQITFBRSmzdvf6NkEohtFyQ2dE/n82cyw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="Qa02+/00";
	dkim=pass header.d=gmail.com header.s=20260707 header.b=T6zMc8He;
	arc=pass ("google.com:s=arc-20260327:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=6pAnK5vUhwyjA3T5PrOrTTENyVoE6EPn1VJUHDBrpvY=; b=Qa02+/00h1sejh
	1uAyMdfCq089djcjK5I50NIN+Wb4fK34tCQrcJF3hM/upWlVf/56wqa01cD2R3kfT/01y+MWSbzWh
	BnD5fjmD8paHN/k39bHm3tyegRrl0PdNUsrMKiEnF77o4UQjT0z/amFTO9eo9TuHyn84XR8xu28zl
	cJvFayMXQVF/D+brTUiRwNv6hIitcK+1c7PV5+bunQDMPup08R1M/gwJ1UXRw3Mx5qXWyVkwHRUyi
	E31EzwC3g+tbfEvTF2kBRB93LQjbLKbskYg9bLwFh4zmwhHg8DedcrXcrRpm2/fs0b0ubvA+Ls3XX
	sghjjpBs7kKBdIWl3y5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU4q1-0000000CbYs-2wvp;
	Thu, 19 Nov 2026 16:18:17 +0000
Received: from mail-dl1-x1236.google.com ([2607:f8b0:4864:20::1236])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU4py-0000000CbYP-01Ai
	for barebox@lists.infradead.org;
	Thu, 19 Nov 2026 16:18:16 +0000
Received: by mail-dl1-x1236.google.com with SMTP id a92af1059eb24-1b3a05f8b5bso3055234c88.1
        for <barebox@lists.infradead.org>; Thu, 19 Nov 2026 08:18:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795105093; cv=none;
        d=google.com; s=arc-20260327;
        b=C2PgZPmv1C7L3+7nmGqAsrl2SSBO6nY7n7OIg9E3A2ixEKIvGVd/OQTMqsuz4uWLYx
         W0J49SnlKTLjtCjmVlXWpqkoiOavedjwMof9piNaioZLv5x/WR5Ix8V3aM82f/0YW1aD
         6SFgfD4AXYy8D1U42r4tsQebeyhSwI2rPmnmz21Mjd1tvKTAwkWm7cbRhyc913ytn0MR
         fcsf4uPFZliK9OOyi1xVKVVEQGasw7D8N1T9ZYmepegqULaNUpklHwUJjIyMyFnhQ6W+
         9pSzvGjN3MtoY0qYz65t06d5MGl7clJiqSKQh+7/XHSgzNJyHnYb0m4F3HqJyvN7Dw84
         08LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=6pAnK5vUhwyjA3T5PrOrTTENyVoE6EPn1VJUHDBrpvY=;
        fh=6m4FHuSXUNOcNzHr7SGIrDJJSTifoUTbQMzcFFveTBc=;
        b=Je8ay6IZB8EUWk40ZbiaypdbTOKWiKF0mS6zIWdy+5nsNz7NVcv1hGoaKVz7jil+49
         s3xUlvVwIe2np/XHj5+SsHqhc1nER7g26okgqiP+uZNUyCpYln617zM+/1ald5DPoTcI
         orQVf4cBY+5SuPdWXx2DSnVwaoYMMWeZWHhdXd09jYtztBai/LwL45hW7lsvemGNkNdh
         GCVXQTHS/rJyE7rkXMToM0xAoCg9Xc2FF+lo2F7ElxaI/idscaDqMIt0op8+FCVGT0T4
         EGKD7NLbODkDcPZroa31gA+cKh+xY9QGt6MNMNZOwLMRN6UUGXpemfjFl0pLleNLzWCp
         T9fA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795105093; x=1795709893; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=6pAnK5vUhwyjA3T5PrOrTTENyVoE6EPn1VJUHDBrpvY=;
        b=T6zMc8HeX235/ZeDL43PDRhZWN44fgmDvwdv0hCLvj/Mqsap7e8GlEeTIYe4SHPZHo
         lEd8UjSZdvzDgMqv8AClXkTP2KlEXqpLpWhB5E/ESnBnXNNsRj2IGvWsZmud4SIqYWLv
         D8bR0AclIUcE5QAW2Wyv2SboALdRMavI//o3FI2+4mckMyNNZs2UFPAKGI/cvCA8JvU3
         kvdZ+vHaxifYmTaxJ7LZ26VDblv1KsKVLK75/WkCe9IIw2j+A+Yy31EqifMKOxxWzN1G
         5F/D/4kQBHF/Jek8nkT/97zVQSbYeRZAtepVbSVwA6hzM2kY+zYgUhaINiqY8s3s3ca4
         Hrxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795105093; x=1795709893;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6pAnK5vUhwyjA3T5PrOrTTENyVoE6EPn1VJUHDBrpvY=;
        b=TEIGHKhanHIC7u1w4aqvpvT95PGE4S5biYJ1xpfHeu6ZQVxtPrwGyMrzAu7+a8Q5yZ
         7Nlj861LY54A3EIQ3032sdx+MiEJ6kXBLiIwsE0FPy5H1LWMyJMo57bTTNVnQmK308wU
         jnOQEIXhQapHWgsYYgykfD2ZWJ2cBPAJvSLvW4UVajkeV2JEjtm7Oda0Fj8zm2szHvmz
         w42DYqgbXxcAWJIQak7LH1uMAI+KKrIh+ZV1rkNAEDukIB/cD3PQEyWGZa0O+gLMqDIE
         7Sk9dLTcY0qBKIR0uBns2tA65rQcpp3wL+CwOv4tEILKJ1zxyxvM9dNdKJB5qsXEmh5h
         8Qng==
X-Forwarded-Encrypted: i=1; AL+hErEF+p+71ZtKDd0psIlZSgL+I93EZClY5ASjJMv5lwyUtWWVUYORUN+L+nEGzUsdV/hcBTDzpvuA@lists.infradead.org
X-Gm-Message-State: APuU4Z/3x63a33fVsnWhus4W6iGvgyvWQ3/sk+/XGaYNsiT2dNn0XvH3
	I1gGMZmdyDrbaU2aUjWKj2W681Y4x6PSvdcafRWfx0incN5tgh7NipIJNpecPPjAySDh5fq6F8T
	aiZUVdGdsZavYMTLV2DvmINUUn8FWXZJrUSuHIlQPlQ==
X-Gm-Gg: AYBFou2w1XJoq8CJZgrI69r8YyAXL7zuaOJvIkSjfwI2q//tbIDpUtjhfYfFOQjNP7h
	RJeCpzyEtvuwPr+1M53B6V8tTqoo5HTLx1Z/DXkS97ssFYeFDT1M6n86AZq9U3Ti2pv3WF8TVFN
	3ZS6nlTPaia31zwZVhcCMsJ9x7F3OxDpPESverIeCAGDtngCK8a3kSTIR83wQvNEsloO9ViE+jS
	YuX33OswBlPScwQmDLQpOMd0tZxZr3IhdWmM866mz1fOi4b9Y5BPZJfrAT8O+8ciKidV6VAmSju
	YRLQQLSruHpaepMgrNLAdHCG78F9pOmHyw+WYULqBotxpEwzD/sMpSReSaRmSR5ZqCIMlfLRhnV
	bEx3iuFfP9hRMsZ+1UrJOohEu2OzUGyJICMKvyw==
X-Received: by 2002:a05:7022:2641:b0:1b5:1ee6:b6a1 with SMTP id
 a92af1059eb24-1b5568fe47fmr153102c88.38.1795105092847; Thu, 19 Nov 2026
 08:18:12 -0800 (PST)
MIME-Version: 1.0
References: <CAP1tNvRtU8munqnUTiqU_zEP_rxdm_hb42u_oU1FVL93czrtFA@mail.gmail.com>
 <yhue3ceigbcc2njkoqyui5z6dhjkxts3dvbbwxlt7v36abxsyi@v3uubuqgfe5x>
 <CAP1tNvRpSdk9mauU3RGraT0DqCc5LFyR8mzBjHQg3Uw_eeo63A@mail.gmail.com> <2817c1f2-7550-4c85-821d-acffc20d3077@pengutronix.de>
In-Reply-To: <2817c1f2-7550-4c85-821d-acffc20d3077@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 19 Nov 2026 19:18:01 +0300
X-Gm-Features: AclHuK_-R4DL9py-i6b7-qnnrNY9NMC0atgwYCcHdhsxUXLLE59mP-AAMMsbWPI
Message-ID: <CAP1tNvRWnRyMqBA2kxu-a-UxLUm2TJXR3_tHANL5X0sfEDXX3Q@mail.gmail.com>
Subject: Re: Strange bug with supply dependency
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Marco Felsch <m.felsch@pengutronix.de>, Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_081814_064610_4486B686 
X-CRM114-Status: UNSURE (   3.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello. barebox@Diasom DS-RK3588-SMARC-EVB:/ devinfo `-- global
    `-- nv `-- platform `-- feae0000.timer@feae0000.of `-- timer.of `-- fd7c0000.clock-controller@fd7c0000.of
    `-- pinctrl.of `-- fd8a0000.gpio@fd8a0 [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2607:f8b0:4864:20:0:0:0:1236 listed in]
                             [list.dnswl.org]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
                             digit
                             [eagle.alexander923(at)gmail.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [eagle.alexander923(at)gmail.com]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Spamd-Result: default: False [-8.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[google.com:s=arc-20260327:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20260707];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	FORGED_SENDER(0.00)[eaglealexander923@gmail.com,barebox-bounces@lists.infradead.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	FROM_NEQ_ENVFROM(0.00)[eaglealexander923@gmail.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DBL_PROHIBIT(0.00)[0.0.0.18:email,0.0.0.0:email,0.0.0.2:email,0.0.0.10:email,0.0.0.23:email,0.0.0.19:email];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_IN_DNSWL_NONE(0.00)[2607:f8b0:4864:20::1236:received]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 336E6200F83
X-Rspamd-Server: mx1
X-Stat-Signature: zaaxu4f5usx533d1s7ydkq61cw971i1u

Hello.

barebox@Diasom DS-RK3588-SMARC-EVB:/ devinfo
`-- global
`-- nv
`-- platform
   `-- feae0000.timer@feae0000.of
   `-- timer.of
   `-- fd7c0000.clock-controller@fd7c0000.of
   `-- pinctrl.of
      `-- fd8a0000.gpio@fd8a0000.of
      `-- fec20000.gpio@fec20000.of
      `-- fec30000.gpio@fec30000.of
      `-- fec40000.gpio@fec40000.of
      `-- fec50000.gpio@fec50000.of
   `-- feb50000.serial@feb50000.of
      `-- cs0
         `-- 0x00000000-0xffffffffffffffff (   0 Bytes): /dev/cs0
   `-- memory-controller.of
   `-- mem0
      `-- 0x00000000-0xef5fffff (   3.7 GiB): /dev/ram0
   `-- mem1
      `-- 0x00000000-0x2fbffffff (  11.9 GiB): /dev/ram1
   `-- mem2
      `-- 0x00000000-0x039fffff (    58 MiB): /dev/ram2
   `-- mem3
      `-- 0x00000000-0xffffffffffffffff (   0 Bytes): /dev/mem
   `-- netconsole
      `-- 0x00000000-0xffffffffffffffff (   0 Bytes): /dev/netconsole-1
   `-- feaa0000.i2c@feaa0000.of
      `-- i2c2
         `-- rk86020
         `-- m41t620
   `-- evb-12v0-regulator.of
   `-- vcc4v0-sys-regulator.of
   `-- fd880000.i2c@fd880000.of
      `-- i2c0
         `-- pcal65240
         `-- rk86021
         `-- rk86030
      `-- fd880000.i2c@fd880000:pmic@23.of
   `-- fec10000.adc@fec10000.of
   `-- machine
   `-- firmware:scmi.of
      `-- scmi_dev0
      `-- scmi_dev1
      `-- scmi_dev2
   `-- firmware:optee.of
      `-- tee0
   `-- l3-cache.of
   `-- display-subsystem.of
   `-- pmu-a55.of
   `-- pmu-a76.of
   `-- psci.of
   `-- clock-0.of
   `-- clock-1.of
   `-- fb000000.gpu@fb000000.of
   `-- fc900000.iommu@fc900000.of
   `-- fd58a000.syscon@fd58a000.of
   `-- fd58c000.syscon@fd58c000.of
   `-- fd5e8000.syscon@fd5e8000.of
   `-- fd5ec000.syscon@fd5ec000.of
   `-- fd5a4000.syscon@fd5a4000.of
   `-- fd5a6000.syscon@fd5a6000.of
   `-- fd5a8000.syscon@fd5a8000.of
   `-- fd5ac000.syscon@fd5ac000.of
   `-- fd5b0000.syscon@fd5b0000.of
   `-- fd5b4000.syscon@fd5b4000.of
   `-- fd5b5000.syscon@fd5b5000.of
   `-- fd5bc000.syscon@fd5bc000.of
   `-- fd5c4000.syscon@fd5c4000.of
   `-- fd5c8000.syscon@fd5c8000.of
   `-- fd5d0000.syscon@fd5d0000.of
   `-- fd5d8000.syscon@fd5d8000.of
   `-- fd5dc000.syscon@fd5dc000.of
   `-- fd5e0000.syscon@fd5e0000.of
   `-- fd5f0000.syscon@fd5f0000.of
   `-- fd600000.sram@fd600000.of
      `-- 0x00000000-0x000fffff (     1 MiB): /dev/sram0
   `-- fd8d8000.power-management@fd8d8000.of
      `-- fd8d8000.power-management@fd8d8000:power-controller.of
   `-- fdab0000.npu@fdab0000.of
   `-- fdab9000.iommu@fdab9000.of
   `-- fdac0000.npu@fdac0000.of
   `-- fdaca000.iommu@fdaca000.of
   `-- fdad0000.npu@fdad0000.of
   `-- fdada000.iommu@fdada000.of
   `-- fdb50000.video-codec@fdb50000.of
   `-- fdb50800.iommu@fdb50800.of
   `-- fdb60000.rga@fdb60000.of
   `-- fdb60f00.iommu@fdb60f00.of
   `-- fdb70f00.iommu@fdb70f00.of
   `-- fdb80000.rga@fdb80000.of
   `-- fdba0000.video-codec@fdba0000.of
   `-- fdba0800.iommu@fdba0800.of
   `-- fdba4800.iommu@fdba4800.of
   `-- fdba8800.iommu@fdba8800.of
   `-- fdbac800.iommu@fdbac800.of
   `-- fdc38000.video-codec@fdc38000.of
   `-- fdc38700.iommu@fdc38700.of
   `-- fdc40700.iommu@fdc40700.of
   `-- fdc70000.video-codec@fdc70000.of
   `-- fdca0000.iommu@fdca0000.of
   `-- fdf35000.qos@fdf35000.of
   `-- fdf35200.qos@fdf35200.of
   `-- fdf35400.qos@fdf35400.of
   `-- fdf35600.qos@fdf35600.of
   `-- fdf36000.qos@fdf36000.of
   `-- fdf39000.qos@fdf39000.of
   `-- fdf3d800.qos@fdf3d800.of
   `-- fdf3e000.qos@fdf3e000.of
   `-- fdf3e200.qos@fdf3e200.of
   `-- fdf3e400.qos@fdf3e400.of
   `-- fdf3e600.qos@fdf3e600.of
   `-- fdf40000.qos@fdf40000.of
   `-- fdf40200.qos@fdf40200.of
   `-- fdf40400.qos@fdf40400.of
   `-- fdf40500.qos@fdf40500.of
   `-- fdf40600.qos@fdf40600.of
   `-- fdf40800.qos@fdf40800.of
   `-- fdf41000.qos@fdf41000.of
   `-- fdf41100.qos@fdf41100.of
   `-- fdf60000.qos@fdf60000.of
   `-- fdf60200.qos@fdf60200.of
   `-- fdf60400.qos@fdf60400.of
   `-- fdf61000.qos@fdf61000.of
   `-- fdf61200.qos@fdf61200.of
   `-- fdf61400.qos@fdf61400.of
   `-- fdf62000.qos@fdf62000.of
   `-- fdf63000.qos@fdf63000.of
   `-- fdf64000.qos@fdf64000.of
   `-- fdf66000.qos@fdf66000.of
   `-- fdf66200.qos@fdf66200.of
   `-- fdf66400.qos@fdf66400.of
   `-- fdf66600.qos@fdf66600.of
   `-- fdf66800.qos@fdf66800.of
   `-- fdf66a00.qos@fdf66a00.of
   `-- fdf66c00.qos@fdf66c00.of
   `-- fdf66e00.qos@fdf66e00.of
   `-- fdf67000.qos@fdf67000.of
   `-- fdf67200.qos@fdf67200.of
   `-- fdf70000.qos@fdf70000.of
   `-- fdf71000.qos@fdf71000.of
   `-- fdf72000.qos@fdf72000.of
   `-- fdf72200.qos@fdf72200.of
   `-- fdf72400.qos@fdf72400.of
   `-- fdf80000.qos@fdf80000.of
   `-- fdf81000.qos@fdf81000.of
   `-- fdf81200.qos@fdf81200.of
   `-- fdf82000.qos@fdf82000.of
   `-- fdf82200.qos@fdf82200.of
   `-- fe060000.dfi@fe060000.of
   `-- fe2b0000.spi@fe2b0000.of
   `-- vcc-3v3-sys-regulator.of
   `-- vcc-sdmmc0-regulator.of
   `-- fe2c0000.mmc@fe2c0000.of
      `-- mmc1
         `-- 0x00000000-0x39d4fffff (  14.5 GiB): /dev/mmc1
         `-- 0x00008000-0x00287fff (   2.5 MiB): /dev/mmc1.0, mmc1.boot
         `-- 0x00288000-0x00387fff (     1 MiB): /dev/mmc1.1, mmc1.env
         `-- 0x00388000-0x5ad87fff (   1.4 GiB): /dev/mmc1.2, mmc1.root
   `-- fe2e0000.mmc@fe2e0000.of
      `-- mmc0
         `-- 0x00000000-0x003fffff (     4 MiB): /dev/mmc0.boot0
         `-- 0x00000000-0x003fffff (     4 MiB): /dev/mmc0.boot1
         `-- 0x00000000-0x7487fffff (  29.1 GiB): /dev/mmc0
   `-- fe378000.rng@fe378000.of
   `-- fe600000.interrupt-controller@fe600000.of
   `-- fea10000.dma-controller@fea10000.of
   `-- fea30000.dma-controller@fea30000.of
   `-- feac0000.i2c@feac0000.of
      `-- i2c4
   `-- fead0000.i2c@fead0000.of
      `-- i2c5
         `-- 24c020
            `-- eeprom0
               `-- 0x00000000-0x000000ff ( 256 Bytes): /dev/eeprom0
               `-- 0x00000000-0x00000005 (   6 Bytes):
/dev/eeprom0.mac-address@fa
         `-- 24c021
            `-- eeprom1
               `-- 0x00000000-0x000000ff ( 256 Bytes): /dev/eeprom1
               `-- 0x00000000-0x00000005 (   6 Bytes):
/dev/eeprom1.mac-address@fa
   `-- feaf0000.watchdog@feaf0000.of
      `-- wdog0
   `-- feb30000.spi@feb30000.of
      `-- spi@00
      `-- spi@10
   `-- fec00000.tsadc@fec00000.of
   `-- fec90000.i2c@fec90000.of
      `-- i2c7
   `-- fecc0000.efuse@fecc0000.of
      `-- rockchip-otp0
         `-- 0x00000000-0x000003ff (     1 KiB): /dev/rockchip-otp0
         `-- 0x00000000-0x00000001 (   2 Bytes): /dev/rockchip-otp0.cpu-cod=
e@2
         `-- 0x00000000-0x0000000f (  16 Bytes): /dev/rockchip-otp0.id@7
         `-- 0x00000000-0x00000000 (   1 Bytes):
/dev/rockchip-otp0.cpu-leakage@17
         `-- 0x00000000-0x00000000 (   1 Bytes):
/dev/rockchip-otp0.cpu-leakage@18
         `-- 0x00000000-0x00000000 (   1 Bytes):
/dev/rockchip-otp0.cpu-leakage@19
         `-- 0x00000000-0x00000000 (   1 Bytes):
/dev/rockchip-otp0.log-leakage@1a
         `-- 0x00000000-0x00000000 (   1 Bytes):
/dev/rockchip-otp0.gpu-leakage@1b
         `-- 0x00000000-0x00000000 (   1 Bytes):
/dev/rockchip-otp0.cpu-version@1c
         `-- 0x00000000-0x00000000 (   1 Bytes):
/dev/rockchip-otp0.npu-leakage@28
         `-- 0x00000000-0x00000000 (   1 Bytes):
/dev/rockchip-otp0.codec-leakage@29
   `-- fed10000.dma-controller@fed10000.of
   `-- ff001000.sram@ff001000.of
      `-- 0x00000000-0x000eefff (   956 KiB): /dev/sram1
   `-- fd5b8000.syscon@fd5b8000.of
   `-- fd5c0000.syscon@fd5c0000.of
   `-- fd5cc000.syscon@fd5cc000.of
   `-- fd5d4000.syscon@fd5d4000.of
   `-- fd5e4000.syscon@fd5e4000.of
   `-- opp-table-cluster0.of
   `-- opp-table-cluster1.of
   `-- opp-table-cluster2.of
   `-- opp-table-gpu.of
   `-- adc-keys-1.of
   `-- gpio-keys.of
   `-- gpio-restart.of
   `-- leds.of
   `-- vcc1v1-nldo-regulator.of
   `-- evb-3v3-regulator.of
   `-- evb-5v0-regulator.of
   `-- chosen:environment-sd.of
`-- mdio_bus
`-- usb
`-- usbotg
`-- spi
`-- i2c
`-- nvmem-layout
`-- pci
`-- scmi_protocol
`-- tee
`-- fs
   `-- ramfs0
`-- genpd
`-- mipi-dsi
`-- gadget
barebox@Diasom DS-RK3588-SMARC-EVB:/ drvinfo
Driver  Device(s)
--------------------
rockchip-gate-link-clk
clk-rk3568
clk-rk3588
        fd7c0000.clock-controller@fd7c0000.of
scmi-clocks
        scmi_dev1
gated-fixed-clk
gpio-gate-clock
syscon
rockchip-gpio
        fd8a0000.gpio@fd8a0000.of
        fec20000.gpio@fec20000.of
        fec30000.gpio@fec30000.of
        fec40000.gpio@fec40000.of
        fec50000.gpio@fec50000.of
rockchip-pinctrl
        pinctrl.of
simple-pm-bus
scmi-regulator
scmi-reset
        scmi_dev2
arm-scmi
        firmware:scmi.of
scmi-power-domain
optee
        firmware:optee.of
arm-architected-timer
        timer.of
rockchip-pm-domain
        fd8d8000.power-management@fd8d8000:power-controller.of
ns16550_serial
        feb50000.serial@feb50000.of
rockchip-dmc
        memory-controller.of
rockchip-spi
        feb30000.spi@feb30000.of
rk3x-i2c
        feaa0000.i2c@feaa0000.of
        fd880000.i2c@fd880000.of
        feac0000.i2c@feac0000.of
        fead0000.i2c@fead0000.of
        fec90000.i2c@fec90000.of
rk808
rk808
regulator-fixed
        vcc4v0-sys-regulator.of
        evb-12v0-regulator.of
        vcc-sdmmc0-regulator.of
        vcc-3v3-sys-regulator.of
        vcc1v1-nldo-regulator.of
        evb-3v3-regulator.of
        evb-5v0-regulator.of
rockchip-usb2phy
naneng-combphy
rockchip-snps-pcie3-phy
rockchip-usbdp-phy
rockchip-iodomain
ext4
ramfs
        ramfs0
tftp
nfs
fat
psci
        psci.of
board-ds-rk3568-som
board-ds-rk3588
        machine
Generic PHY
RTL8201CP Ethernet
RTL8201F Fast Ethernet
RTL8226B_RTL8221B 2.5Gbps PHY
RTL8208 Fast Ethernet
RTL8211 Gigabit Ethernet
RTL8211B Gigabit Ethernet
RTL8211C Gigabit Ethernet
RTL8211DN Gigabit Ethernet
RTL8211E Gigabit Ethernet
RTL8211F Gigabit Ethernet
Generic FE-GE Realtek PHY
RTL8211F-VD Gigabit Ethernet
RTL8226-CG 2.5Gbps PHY
RTL8226B-CG_RTL8221B-CG 2.5Gbps PHY
RTL8221B-VB-CG 2.5Gbps PHY
RTL8221B-VM-CG 2.5Gbps PHY
RTL8366RB Gigabit Ethernet
RTL8365MB-VC Gigabit Ethernet
RTL8366S Gigabit Ethernet
mdio-gpio
eqos-rockchip
rtl8169_eth
usb-hub
dwc3
usb-storage
ehci
xHCI
onboard-usb-dev
pca954x
rk3568-dwcmshc-sdhci
        fe2e0000.mmc@fe2e0000.of
dw_mmc
        fe2c0000.mmc@fe2c0000.of
pwm-backlight
diasom-panel
rockchip-vop2
dwhdmi-rockchip
dw-mipi-dsi-rockchip
gpio-leds
        leds.of
at24
        24c020
        24c021
rockchip-pwm
mmio-sram
        fd600000.sram@fd600000.of
        ff001000.sram@ff001000.of
mem
        mem0
        mem1
        mem2
        mem3
nvmem_cells
nvmem-rmem
rockchip-otp
        fecc0000.efuse@fecc0000.of
dw-wdt
        feaf0000.watchdog@feaf0000.of
pca953x
        pcal65240
optee-rng
rockchip-rng
fan53555-regulator
        rk86020
        rk86021
        rk86030
rk808-regulator
rockchip-dw-pcie
inno-dsidphy
rockchip_saradc
nvme
restart-gpio
        gpio-restart.of
barebox-environment
        chosen:environment-sd.of

Use 'devinfo DEVICE' for more information

=D1=87=D1=82, 19 =D0=BD=D0=BE=D1=8F=D0=B1. 2026=E2=80=AF=D0=B3. =D0=B2 19:0=
2, Ahmad Fatoum <a.fatoum@pengutronix.de>:
>
> Hello Alexander,
>
> On 11/19/26 4:30 PM, Alexander Shiyan wrote:
> > Hello.
> > I meant that the PMIC driver prints no errors in this case.
> > Only GPIO driver print the error.
> > Currently, it looks like this:
> >
> > Board: Diasom DS-RK3588-SMARC-EVB
> > rockchip-dmc memory-controller.of: Detected memory size: 0x400000000
> > netconsole: registered as netconsole-1
> > fan53555-regulator rk86020: FAN53555 Option[10] Rev[1] Detected!
> > WARNING: pca953x pcal65240: Failed to get 'vcc' regulator with
> > Requested probe deferral (ignored).
> > fan53555-regulator rk86021: FAN53555 Option[10] Rev[1] Detected!
> > fan53555-regulator rk86030: FAN53555 Option[10] Rev[1] Detected!
> > ERROR: rockchip_saradc fec10000.adc@fec10000.of: can't get
> > vref-supply: Requested probe deferral
> > ERROR: rockchip_saradc fec10000.adc@fec10000.of: probe permanently defe=
rred
> > ERROR: Could not find ADC channel "aiodev0.in_value1_mV": -2!
> > ERROR: Could not find ADC channel "aiodev0.in_value7_mV": -2!
>
> Do you reach a shell afterwards? Can you share the devinfo/drvinfo output=
?
>
> Cheers,
> Ahmad
>
> >
> > =D1=87=D1=82, 19 =D0=BD=D0=BE=D1=8F=D0=B1. 2026=E2=80=AF=D0=B3. =D0=B2 =
18:08, Marco Felsch <m.felsch@pengutronix.de>:
> >>
> >> On 26-11-19 17:19, Alexander Shiyan wrote:
> >>> Hello All.
> >>>
> >>> I have the following DTS fragment:
> >>>
> >>> exp: gpio@22 {
> >>>   compatible =3D "nxp,pcal6524";
> >>>   reg =3D <0x22>;
> >>>   gpio-controller;
> >>>   #gpio-cells =3D <2>;
> >>> //  vcc-supply =3D <&vcc_1v8>;
> >>> };
> >>>
> >>> pmic@23 {
> >>>   pinctrl-names =3D "default";
> >>>   pinctrl-0 =3D <&pmic_pins &rk806_dvs1 &rk806_dvs2 &rk806_dvs3>;
> >>>   compatible =3D "rockchip,rk806";
> >>>   reg =3D <0x23>;
> >>> ...
> >>>   regulators {
> >>> ...
> >>>     vcc_1v8: dcdc-reg10 {
> >>>       regulator-name =3D "vcc_1v8";
> >>>       regulator-always-on;
> >>>       regulator-boot-on;
> >>>       regulator-min-microvolt =3D <1800000>;
> >>>       regulator-max-microvolt =3D <1800000>;
> >>>
> >>>       regulator-state-mem {
> >>>         regulator-on-in-suspend;
> >>>         regulator-suspend-microvolt =3D <1800000>;
> >>>       };
> >>>    };
> >>> ...
> >>>
> >>> Uncommenting the "vcc-supply" line causes the PMIC driver to silently
> >>> fail to load,
> >>
> >> What do you mean by silently? Are there no error messages?
> >>
> >> You extend the driver error message from:
> >>
> >> dev_warn(dev, "Failed to get 'vcc' regulator (ignored).\n");
> >>
> >> to
> >>
> >> dev_warn(dev, "Failed to get 'vcc' regulator with %pe (ignored).\n", r=
eg);
> >>
> >> Regards,
> >>   Marco
> >>
> >>> which in turn breaks all devices powered by the PMIC.
> >>> None of the expander's GPIOs are used anywhere.
> >>> When this line is commented out, everything works as expected.
> >>> Is there some sort of dependency from sharing the same bus?
> >>>
> >>> Thanks!
> >>>
> >
>
> --
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>


