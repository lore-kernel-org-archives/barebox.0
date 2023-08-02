Delivery-date: Wed, 02 Aug 2023 12:51:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qR9Rl-003Okj-DZ
	for lore@lore.pengutronix.de; Wed, 02 Aug 2023 12:51:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qR9Rj-0007CE-Fn
	for lore@pengutronix.de; Wed, 02 Aug 2023 12:51:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Date:To:From:Subject:Message-ID:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q6oM6cjk4z6Owb0M0Ey9W1TSVwKbQNp/5dUcC8VptPw=; b=Rt+9DMYII1cKCH
	JmEPxSKUPm+JKXVQAnOz/9WbBg0qEWBRF9bP2JRc1jsvz8r0UDAka0TnAZTxBb7LXuzHEQ0/1mt84
	kdpp7CxCiPiDX0WfaMyn65dlLRuZbBajlNd3GNJExlxenBKtCB3/k6SsdsQdkV2zTMm4KHMFm0hrA
	Ca6OTG62HfV+xGLPBhIzeZN1Y3yjhT86QGe2lrdYXVEgCXfgueVsHdge2CD5fUxeS4dHOPz12njq5
	C0Q6rP6h8TbEiC7dF3RSYtyopZV/2S0QgwK9x9xDp2EMMIONemtR5kkun+llZZcPPmoOtRJZMoy3c
	iqD3MeoCgzJ83j7hU++w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qR9QP-004dCc-0W;
	Wed, 02 Aug 2023 10:49:53 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qR9QM-004dBx-1i
	for barebox@lists.infradead.org;
	Wed, 02 Aug 2023 10:49:51 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-522294c0d5bso8796867a12.2
        for <barebox@lists.infradead.org>; Wed, 02 Aug 2023 03:49:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690973388; x=1691578188;
        h=mime-version:user-agent:content-transfer-encoding:date:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Q6oM6cjk4z6Owb0M0Ey9W1TSVwKbQNp/5dUcC8VptPw=;
        b=BWMcCFvKizJ0NhDiQzgs31RHw8Uv7s28ymWko7/TXVhrp782yS4ZczURbVfnO2+JYA
         ztrnOwjTxUk4VbW4GC5ichAqw61Ox10bSwgkTxucmSMzfDCT/wiromSyTIKV+p4ItlLQ
         /j2w1Bjcb/pX8wSmHM3XEFaUQ6FgtV8sHgAg11//Q905NPzQX4zUP+SKBOqgGxH7HXVQ
         qnRaxVZCqqzkB8HEmK+lJa2C4L+XcFRt2iJS6pmmpf/nKvCCjciYJjg3pnzIOA33qf8W
         0rw/RExGVosdF2hp2iYLmU4E9fo2erUiNzHSK5ZEA+qQycF+rc/RA9ffc2ui8aKTwNCP
         u04Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690973388; x=1691578188;
        h=mime-version:user-agent:content-transfer-encoding:date:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q6oM6cjk4z6Owb0M0Ey9W1TSVwKbQNp/5dUcC8VptPw=;
        b=SF1Lr7CS4rTqD34MX1mSD6kJxmawiiuZlQBkgYrxaJbzPjTwO0hnRb2Ab/m+2I+LXT
         wCD5bDe2mvqb3K35XF4hHX9PEt9Zg1ajnp/f+BrqjsNLIQz1XWHFfNFPFWda0rtN5wtC
         7eOv8d5ax6RtHOt7Zi2BiuXB+64xsxhcTW15QTHlEAfYxFv5pSB4fdJXpRw3TjbLCfvg
         j3g15cxYG4IvuGwxs55VN/X6PqNvyP5L6bygCaBM39Ah4qihT1BYe0ps9kGxVPPrIOAm
         uVTr5bymLFElexdD1HhBZVaKT27LtW9VwsjE+CJKxmYl+cKuVnkH2zabvQKM0GeN59cV
         C7ng==
X-Gm-Message-State: ABy/qLamDwzLD5ClzPk5rG4ni0SNcJEZQRuXL+vRC27ReC3sdUuPIjLL
	U1rS1lUbU+IQ1eHHUeYPigb77LWQHno=
X-Google-Smtp-Source: APBJJlEAt8kc5AtqpJWDqHCXFrXYG+tgNav3E48/t0xrr/We9tm7WvR4Q11Jo+GDZtMhsq3Ew5Z4Aw==
X-Received: by 2002:aa7:c309:0:b0:522:6e3f:b65 with SMTP id l9-20020aa7c309000000b005226e3f0b65mr4609835edq.33.1690973388119;
        Wed, 02 Aug 2023 03:49:48 -0700 (PDT)
Received: from lifebook.fritz.box (p200300da67420000613116fa53eba4c2.dip0.t-ipconnect.de. [2003:da:6742:0:6131:16fa:53eb:a4c2])
        by smtp.gmail.com with ESMTPSA id c12-20020a056402120c00b0052241b8fd0bsm8216203edw.29.2023.08.02.03.49.47
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Aug 2023 03:49:47 -0700 (PDT)
Message-ID: <02ae7e199cbef402672f7289f4e2e81673244003.camel@gmail.com>
From: Denis Osterland-Heim <denis.osterland@gmail.com>
To: barebox@lists.infradead.org
Date: Wed, 02 Aug 2023 12:49:46 +0200
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230802_034950_586941_48F46D1B 
X-CRM114-Status: UNSURE (   5.40  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] raspi: pass additional VC values via dtb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The first patch registers the same fixups as a boot of
barebox-raspberry-pi.img when booting barebox-dt-2nd.img, too.
The second patch adds fixups for additonal VC values.

Denis OSTERLAND-HEIM (2):
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 raspi: support to read vc values via dt-2nd =
boot
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 raspi: fixup additional vc created nodes

=C2=A0arch/arm/boards/raspberry-pi/rpi-common.c | 70 +++++++++++++++++++++-=
-
--------
=C2=A01 file changed, 49 insertions(+), 21 deletions(-)




