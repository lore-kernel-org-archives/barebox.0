Delivery-date: Wed, 11 Dec 2024 07:15:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLG0T-006fqV-1m
	for lore@lore.pengutronix.de;
	Wed, 11 Dec 2024 07:15:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLG0T-0001jv-GX
	for lore@pengutronix.de; Wed, 11 Dec 2024 07:15:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Z8w9RMaOPS1Re7d8xtI7PHEKuXfoOg8ClxKr9Cgi2Js=; b=itgJE8MyhfaA/6c+HHta6cW/8e
	fWvOJmi4OZoT0IXupA50zPDRca5cvHeXcRZUNi+IHzhckDtw+HY/VD9FnywcC0oaPBGwJD8Cwgp9i
	P0xIU+LK5rgziXvGNv3qTkuK2X60hD7D1MeYSzGFsowywGvuBSeB8oFgxCGI4W90HjCmhHdsUP0t4
	D27yMNRT41gguGgVHCMTBfY2bEl9LxRN3s4DTJ31ATClE3aC8e9aS8/+pQ5EybUsvB2xp9rtpvUyJ
	6SiNPFzBCNFD74bXOT8FAUh+HaFNyHr499qm7Uf+sTTWygg4jFukYbSb9G36Is04dLIfnBc04CIrd
	bTXc2y+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLFzk-0000000DuNH-2ySh;
	Wed, 11 Dec 2024 06:14:48 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLFzh-0000000DuMV-2J2H
	for barebox@lists.infradead.org;
	Wed, 11 Dec 2024 06:14:46 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-2ee67e9287fso5691445a91.0
        for <barebox@lists.infradead.org>; Tue, 10 Dec 2024 22:14:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733897684; x=1734502484; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Z8w9RMaOPS1Re7d8xtI7PHEKuXfoOg8ClxKr9Cgi2Js=;
        b=LvlAlv9IDSwNUQDbrbwjC06bi80UpFM1Tno3rD7uWq5NhPwDFCTW/A9WAQP006ARVA
         Kqga2CevotuF2I2bd0MhZXbxxiTgOx+cAbhZKueq9KXnI/pqlx11avQuCXEn41s/HiUt
         yGMhylXJfZwTR6xZ9Go80JJa6t3UXJ/T56+dRixM0+1po2S/FUEVgIob0cFurewitalw
         t52c8N2poL/CkIpbs9sEAzDG2nrEi4PNAww1nE6WZeoZL/+TqYuMSMiqcgegd7akRz6O
         JMj4AGy8SQAkCnFss0w91jyVd72YfxEWINe7WVpRchjH/M5mln0IMQsG0lysYH9NYYUu
         eC6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733897684; x=1734502484;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z8w9RMaOPS1Re7d8xtI7PHEKuXfoOg8ClxKr9Cgi2Js=;
        b=YrriPlrrlIcYUhgEIEp97ZtSSshi6WNXnMq4KvTEsgKP3DNf+8+grOwJr7meP2m9dg
         o6Di5ciYkmpDj4LHTAleWiM0Azh+b+WtbB3W5p5OG6gqzr9I2SP0jbwBXmVjBuI+dANJ
         U7dEdl2HYSQJZtPMws7+Y6IiK9cmt7byak/98bDVj2L/obOkPhyVXVtP//NJaBvlPlZv
         F7SDyO7BM+8TdQmrfFa23vfm4z2EZsal4mifeJXmci9C8mBxN2nNa0RvQTucejVcYfPM
         oUPVPgHgKYQBhQdForOSOCVUS54VSf7+RH2OeD4Z6pJnvpyBMN7+XE1sj1+bB0yMGGsz
         /TUg==
X-Gm-Message-State: AOJu0Ywd0gAXlz8MX4FEXFZiid3KM+0tVYVcuN+AN4wJoI2McC3nvmN7
	j49HdW+SnNQbSk19NZZx6eUGUT3BU5n9EHDpMu7Ypkad4BxvrtT5K4c0ahrFGVrDYv5sHaCDVhd
	QHR9C42TSSK2a/DXagqPbqUwCbj7WBQD2
X-Gm-Gg: ASbGncugkI9NDE5yo8W7NOYrTk2EAIpUERxoxhSCOJTckvB7BQj21eDpROZto5Kvlla
	S0mNrQ5+hQWeCx/8gkxS34UBjsg8h0rPlCAmHuQ==
X-Google-Smtp-Source: AGHT+IE4fVGZB3lOn5W4CSt4U2HnouBmcHu7Mr4UQAP4QNYcCWkdoYeKErZzoKy9ENwmsA+S0Xsaei2gcipUqL4zeZ4=
X-Received: by 2002:a17:90b:17c5:b0:2ee:cfba:734b with SMTP id
 98e67ed59e1d1-2f127fd8ccamr2584529a91.21.1733897684228; Tue, 10 Dec 2024
 22:14:44 -0800 (PST)
MIME-Version: 1.0
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 11 Dec 2024 09:14:32 +0300
Message-ID: <CAP1tNvQoUsjRNKMr-CZ_Q67-PKGfj_ZsoePeT3pgOe_DefriMg@mail.gmail.com>
To: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_221445_586438_21C60297 
X-CRM114-Status: UNSURE (   3.99  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.2
Subject: Possible regression 2024.12.0 in parsing "aliases"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

After updating barebox to version 2024.12.0, an error message appeared
when loading
the RK3568 board. Accordingly, the I2C1 interface does not work.
In the previous version (2024.10.0), everything worked as it should. I did not
understand what the problem is, but I suspect that aliases are now
parsed incorrectly.
The system has an alias i2c1 (this is the basic SOC i2c1 interface)
and an alias i2c10 for the GPIO expander. Perhaps the problem is somewhere here?

ERROR: rk3x-i2c fe5a0000.i2c@fe5a0000.of: probe failed: Device or resource busy

Thanks!


