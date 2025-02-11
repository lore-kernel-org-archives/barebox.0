Delivery-date: Tue, 11 Feb 2025 14:16:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1thq7Y-00118c-1x
	for lore@lore.pengutronix.de;
	Tue, 11 Feb 2025 14:16:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1thq7X-0003zH-G8
	for lore@pengutronix.de; Tue, 11 Feb 2025 14:16:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6cDAaLYuRJ8C/adebcDjwkmb4rUpKWSPJ5PeQozLM0M=; b=NAt93CD3+QUH/eF7ylEtyL3KgN
	Fz4L6LY/5fuKpD8UHFp6muqxn18884NxhQdYFyWpykFUMqV13vO/Xt62TW0zSZ+p0JSZPP3U4ldk6
	vhlCwzeyIA7D/Z0PPliHwEW8ZHYsmG2WypIu3l7kE8MeVyeKlLzOrJizJR+Fevza91ASFxOgiDLUM
	dzbHggbEhzBl1ThKMJ8tJV+mNgFRsCFjRlucsERoz8e9azEE/mclaxw6G8RwNsBLOn+KAv4OGz+ph
	fT9lgVn+kXcWFONs8xQNsr1Bs6A4j+ZPWrFdXkT0PQoADMkGTjVMFrFTDco2d5fNOoMA4ek2LflB+
	uriYX8Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thq6x-00000003ur2-3v5J;
	Tue, 11 Feb 2025 13:15:35 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thppa-00000003rB4-2E22
	for barebox@lists.infradead.org;
	Tue, 11 Feb 2025 12:57:39 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-ab7cc0c1a37so300365766b.0
        for <barebox@lists.infradead.org>; Tue, 11 Feb 2025 04:57:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739278656; x=1739883456; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6cDAaLYuRJ8C/adebcDjwkmb4rUpKWSPJ5PeQozLM0M=;
        b=e0vjJ+9m5NClcME0/YFTmLlOQuEvtt/RpaPJq0ZaOpxi0iRwsDSPkHGp7oQxlBHQdO
         NzqHSMCX5dNGdnuMncAWSWUXdESSWzXPzL/9aD09YiQdiBxghPlA3S4Vb4Hnjm500lYz
         VOei9ur9QUaDCeVvaZDLygXE6b+ydj9YbYq1Fx7lb0LMAt+7u7OAOOMIgClAAHKo/qrY
         5iKl5Ihub2ReYjzQWvywP0g+DgR9MTlsqxunnlt/c6TnQACvyDCYvQFjGzu4es8zVwJF
         Kq8EzZpTaU/0a/zD9knetIe2Icxow9RXn7H6pzGowrlAQibZq8TtoMLo1eBclBR4Lqd0
         EU2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739278656; x=1739883456;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6cDAaLYuRJ8C/adebcDjwkmb4rUpKWSPJ5PeQozLM0M=;
        b=RqqNFiiLvBAMIZBnpL5FNDgx5ZHSAgLhUoFpiO9zVDSFUHs51Ez5G27KSncWoBpqMU
         5/WIAkalPkXJC5np2PF2jHz+KqoK90HlUfqimCdrv9LU+k4/VpHp9qWkhECF4/zUHipp
         mphCZNoIfnRQL4VdW90Fg9YTrHVBwAzhUo2c12EBJ+mEzyXLmTxISbeCJKsnLpDcUGtf
         VhRYXpKnLQUCwbNG43U7sWiYZszfv8W/WrFj1daFqZNRJZDzru75ZNeBvIyYrWeFkOwj
         5rHZ6E2QFWKhEOQ5fu29J1GT6jkcPEQpXpLStY3xCnzxIiN4xDwtMg0ysWzrln6tbJ6p
         /J/g==
X-Gm-Message-State: AOJu0YzcwJ70qemcLZvN8+BZGpdgdv9ElRR9xa8UCdtqMglb7tkbwNKG
	0G1Mv91wEMB//+sy1Rhwz2niwWKnvpUvrpl01FXrRuOXN+BD5KFJJ3spE6BpQlppmN16evRU0q2
	Eq7jH0GRLn0LA2HsRJRkWcYaJ41dVpA==
X-Gm-Gg: ASbGncuf9h25YZCgrCoMrI8KsKc2bISFIVQFXrAI92PjRnMhRjs6iWyjrFbYIrj88ta
	bmX7IiYQQvfUF+y6Ugb+gEJe2EzKP4RTmiN0YWj8iSVBdPQf1EH6H62R6akJzRzPNb7+RvIPd
X-Google-Smtp-Source: AGHT+IFBBB0OsIICfHRKSZLKW4t4N8adScPS1DAhB6Hh+hWaB33t3bJuA5Hf4+tQUUUKxnWFzXk+R1kDxWg8SRjj42Q=
X-Received: by 2002:a17:907:6eab:b0:ab7:dfd3:51aa with SMTP id
 a640c23a62f3a-ab7dfd354dcmr227185866b.41.1739278655994; Tue, 11 Feb 2025
 04:57:35 -0800 (PST)
MIME-Version: 1.0
From: Martin Wege <martin.l.wege@gmail.com>
Date: Tue, 11 Feb 2025 13:56:58 +0100
X-Gm-Features: AWEUYZlYZPX-pZ38WglCkqBrNhyH_WubEvQeYfG0veF009j43H1dqjcMsCOyU0Q
Message-ID: <CANH4o6Njc3uHE=NbasRJrRr0W5B89R8MTM_BwGwab7t5fNWuaA@mail.gmail.com>
To: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250211_045738_572213_B460E169 
X-CRM114-Status: UNSURE (   2.25  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.2
Subject: Mount NFSv4.2 filesystem in barebox?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello!

Does barebox have support to mount a NFSv.2 filesystem?

Thanks,
Martin


