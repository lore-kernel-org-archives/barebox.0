Delivery-date: Tue, 03 Nov 2026 22:32:52 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xOM7f-006wWG-2e
	for lore@lore.pengutronix.de;
	Tue, 03 Nov 2026 22:32:52 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 94EBA202BA3
	for <lore@pengutronix.de>; Tue, 03 Nov 2026 22:32:47 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="fSs2/Zqi";
	dkim=pass header.d=puzzle.ch header.s=20211230 header.b=UOxK6MPj;
	dkim=pass header.d=puzzle.ch header.s=20211209 header.b=FZLDn2so;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=puzzle.ch
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793741567;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=zd5fV4e1VTGpBdcD6qn5+jcfI7JqaYj1A6sIux8SaYQ=;
	b=BpWazjeCtVlaaQZLvt5XvU7sNgAE8zAqo3qV7gsuY/hxDcgDanI8+VAslmqOJX3vGv+hhe
	lM7UpwTC6qQ6V9gWUYHPoNPGANDOB1dWUdKqJNxPSBghs7As/mGORiqhyTDLwmNf9q7hn4
	tkEgYFQiRsM7ofyKOgUvHeeC+kiS5DZclnt8LLtc2BPS9Q35/HtEFL8pB/4jb+qP5d+cQ6
	7v+stMHonLq3RMYoBqO7a8ny6xCbXqWHaw1V6YRFOR2I8XdN5n8RHYOGDSvVUdM7qsHtMe
	euGcpBGyKwX9R+54Sundhz99GGcVx5zFO6TymxP0PbN2xUteaVkfaCCD6qodiw==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="fSs2/Zqi";
	dkim=pass header.d=puzzle.ch header.s=20211230 header.b=UOxK6MPj;
	dkim=pass header.d=puzzle.ch header.s=20211209 header.b=FZLDn2so;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=puzzle.ch
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793741567; a=rsa-sha256;
	cv=none;
	b=gTRMn7D7UCwwtj1hK/KLEF5CVUvVaWeWuGzYb4pyH7dU+pp+ja6+CMlqX/tRZfTF6IUN4r
	FfveSPdD2xfDnRxXbhneAsb1y04bMXijFlStffOQ6x7g8JC5lehntwI+lZ4SKiT6qK+3Du
	IOkHjRYdSxkv09PyXUgdAC1RuyQ3XEu7bMTRCx57INLQkKnh4KIVPFPIvaslV2PNlH0/Q+
	Yq5MLujUa8QENQfaD2Nm0IULrEnrRdugX7FyEnKM6o9SSRyOFlJz3ODnuOeRfX3+Y430q7
	euzo/M+Nqj7ySKaYf8VM2CGZZcFQehR/N5SdnbSV7K7pnxWKvy0bikYfnsGq/Q==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=zd5fV4e1VTGpBdcD6qn5+jcfI7JqaYj1A6sIux8SaYQ=; b=fSs2/ZqiVfbAgs
	OWjTRMZXVZgbYVZL3VdFRLQuZcvcJ4RJ6ojUZjNCMHcNrUH5Nn2WLwjuo/qRVvNv5azuYV/FNyb92
	r+KXuICkYevm0ipUsWAgUuOruCe/XuEjVcNd+6WJ/EDmEj04Spv4rsntIkwFpcdEKcsZVGmZ17rYT
	loVJxrxM5uxeTUynJ5hYtbA3fOpQTJT8Lxo4aCycUx6eC9qbINfx9Ez4eYbC/5GF0Ar+bcJS+H7nw
	o8R+lJnEUUuPUXP9sgTWYJeGflAYYUmHddHRCtNB9VZKvZj2oafdGVyuqMtCv/k9teIW1RUiNVgYj
	Bh8Et4OgW4b4eDlmM+Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOM6R-00000003iDs-1LEM;
	Tue, 03 Nov 2026 21:31:35 +0000
Received: from mx03.puzzle.ch ([2a06:c00::5e55])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOM6K-00000003i3X-2cC2
	for barebox@lists.infradead.org;
	Tue, 03 Nov 2026 21:31:34 +0000
Received: from mailstore02.cloud.puzzle.ch (mail.puzzle.ch [45.81.71.99])
	by mx03.puzzle.ch (Postfix) with ESMTPS id 3F70E1BD;
	Tue,  3 Nov 2026 22:31:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=puzzle.ch; s=20211230;
	t=1793741479;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zd5fV4e1VTGpBdcD6qn5+jcfI7JqaYj1A6sIux8SaYQ=;
	b=UOxK6MPjBB0P0CbvNK0EALBB0BxitpiYZe9VxXstxHT9V2mAAd6oEff3szo63ZCo7tj0Pq
	10jssqWMfgT8zfr9xWhHX72XAkn2BWNCqrV9iR7MWM12j5t/koMBi6WQAEGqZCkJ1DO7In
	HmBk0gcGH0WhPmrth4mvwHQm09dMoVpUJVcfB2LvJ6iJxcHqE6/gLQieyk/8b8q+JUpyTJ
	CFUEv6zmTgQiQZTuPZ333sNBSkq7XoQ87J0wc7KtRPhYD/s++XGt6T6jVJ1uMxIJzdZi2x
	jzzC0TIBU73S6DXxGdtPFRNc9UiySXn8cYbQVnOZLpx+tzLaqBxI6J0KkoLXdw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=puzzle.ch; s=20211209;
	t=1793741479;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zd5fV4e1VTGpBdcD6qn5+jcfI7JqaYj1A6sIux8SaYQ=;
	b=FZLDn2sosv/clE+uUCDfrD56IvQUF/P6BNYTh4aqvhFBOC63mZDlR+riLiQKKrK0OSJ5NO
	skKk39u76XW8KyqgUFZsJ8TJ25Q26QstWHEciyAr3pjgaub9uKfRpkvmPT/BgaQgLXleZV
	bPw8eGw40WzNw43Oc5L6H8+wTSpeikVi4HhQzhjcegxGjNUnQii6/zO1XkYNMkn2ZQAEiG
	7a0SZoynasenLWPF8G/Ylg1+v9oAF7tKIwH3X3fke8UM/z5ZejZOBj1zZM9eehR04a62k8
	GBcaiOMaVxF+fbAQKO0AxIBpFPGE1m/+B0b4p2iFs65Lxf1DovYuF9iVdkwhkA==
From: Michael Grzeschik <grzeschik@puzzle.ch>
x-ms-reactions: disallow
Date: Tue, 03 Nov 2026 22:31:10 +0100
Subject: [PATCH 4/6] filetype: detect kwbimage v0 images for NAND boot
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261103-orion_kw_mvebu-v1-4-86442c0d283e@puzzle.ch>
References: <20261103-orion_kw_mvebu-v1-0-86442c0d283e@puzzle.ch>
In-Reply-To: <20261103-orion_kw_mvebu-v1-0-86442c0d283e@puzzle.ch>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Michael Grzeschik <grzeschik@puzzle.ch>
X-Developer-Signature: v=1; a=openpgp-sha256; l=1896; i=grzeschik@puzzle.ch;
 h=from:subject:message-id; bh=lbAv7bbu3+vvYd+BRwwnktRzsI4iPZQomKCAVTrT+kg=;
 b=owEBbQKS/ZANAwAKAb9pWET5cfSrAcsmYgBq6lKlv/kL+VxxCFV+081I/6DzkE1kZq2QCZiys
 hvHAkbMl6aJAjMEAAEKAB0WIQQV2+2Fpbqd6fvv0Gi/aVhE+XH0qwUCaupSpQAKCRC/aVhE+XH0
 q3raEACoXN8phA8WcbvWQ3qkVM4Xqq2psExDxfQwWqfpbeif0ixbp2q/alxEcYqTC1EFEKOEYas
 eSga9qk1FfPYqZUIlMhjwToxnilec3EVZs3M2W29iHq+7X0Jqc81d2U5PeBrY4b0I4bBib+UeWG
 kLV1BFwcuuQel21Ow4Mi/y93f4NjMyD9I7PUN1S8PzU1LNRu5JdvVlUMlurIV7HqwlRXQ8BWRG0
 o1SRRGAK3K2PN3PHyb6v/3HtSgPM7jRoNTEEtCOKtl7GHjGR1cqma830um4gcHHzfpucVtFYddk
 5G9X+JLInkCfiCvBilZzdtnxnpn+CjROGnDJnBVz++ig8SZNR5QHLtyU68JrN9WmlJgfmxuSAOh
 PxoQvOsfEc50sMiwIOpobjT4EE8GMxl8GuPpEkH6zqYHiU/ggvQdY3NKBSb+mdEqrYAJw8FbewL
 mAFeEimCErAnztoDDrLZnQlXwQ+zol6WaXLPLpS5nl9PiwFoIUtszwi6LY2bjRslakCwwTUUvjJ
 5YN+N+jsH7l+g6jtrm7uvd4bfiRdLoFJFPUv+FDjZFS40h8eCFSeZCBjJwbrR2haOOfU1H/4Yio
 31eWqVhG9RXs8Yo7dV7D0QkxKOeYzuqu3vpx/Y84Vq6Wuu5VdzasZYvxeTL+VHVPm/iJk4FBfuF
 7Jqj7qFvd8pBhNw==
X-Developer-Key: i=grzeschik@puzzle.ch; a=openpgp;
 fpr=957BC452CE953D7EA60CF4FC0BE9E3157A1E2C64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_133128_949792_4EB2B7E5 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The kwbimage detection requires header bytes 0x1-0x3 to be
    zero before it looks at the header version. That is right for v1 headers,
    where they are reserved, but in v0 headers byte 0x1 is the NAND ECC [...]
    
 
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 94EBA202BA3
X-Spamd-Result: default: False [-7.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[puzzle.ch,reject];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,puzzle.ch:s=20211230,puzzle.ch:s=20211209];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[grzeschik@puzzle.ch,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_ALL(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,puzzle.ch:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[grzeschik@puzzle.ch,barebox-bounces@lists.infradead.org];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: usxhk8ctiq4bmbiusysekqhmjcqdtmua

The kwbimage detection requires header bytes 0x1-0x3 to be zero before
it looks at the header version. That is right for v1 headers, where
they are reserved, but in v0 headers byte 0x1 is the NAND ECC mode and
bytes 0x2-0x3 are the NAND page size. Every v0 image for NAND boot, as
used on Kirkwood, was therefore reported as unknown, and the mvebu
barebox_update handler refused it:

  ERROR: /barebox-ram.img is not a valid kwbimage
  update failed

Check these bytes for v1 headers only. v0 detection still requires a
valid header checksum.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Michael Grzeschik <grzeschik@puzzle.ch>
---
 common/filetype.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index a25be6e2fc..c5bed9eca9 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -406,9 +406,13 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 
 	if ((buf8[0] == 0x5a || buf8[0] == 0x69 || buf8[0] == 0x78 ||
 	     buf8[0] == 0x8b || buf8[0] == 0x9c) &&
-	    buf8[0x1] == 0 && buf8[0x2] == 0 && buf8[0x3] == 0 &&
 	    buf8[0x18] == 0 && buf8[0x1b] == 0 && buf8[0x1c] == 0) {
 
+		/*
+		 * In v0 headers byte 0x1 is the NAND ECC mode and bytes
+		 * 0x2-0x3 the NAND page size, both non-zero for NAND images.
+		 * Only v1 headers have them reserved.
+		 */
 		if (buf8[0x8] == 0) {
 			unsigned char sum = 0;
 			int i;
@@ -420,7 +424,8 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 			    fuzz_insecure_checksum_accepted(sum, buf8[0x1f]))
 				return filetype_kwbimage_v0;
 		} else if (buf8[0x8] == 1) {
-			if (buf8[0x1d] == 0 &&
+			if (buf8[0x1] == 0 && buf8[0x2] == 0 && buf8[0x3] == 0 &&
+			    buf8[0x1d] == 0 &&
 			    (buf8[0x1e] == 0 || buf8[0x1e] == 1))
 				return filetype_kwbimage_v1;
 		}

-- 
2.53.0



