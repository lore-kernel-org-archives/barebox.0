Delivery-date: Mon, 14 Jun 2021 00:30:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lsYcS-0002at-6e
	for lore@lore.pengutronix.de; Mon, 14 Jun 2021 00:30:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lsYcQ-0001s3-VN
	for lore@pengutronix.de; Mon, 14 Jun 2021 00:30:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/Q8W62eLmXDIGXHDtLpZeFgnWSP3jQCru0PXL262/k=; b=S52g93ndV6TiWy
	FTnM8CufmnYuj3VkWuNj3OfQtOIbD0EkHygojLvU+Mqn/c1Y+2sYtmFef/T1IJ9XswKdZpuSbSLwl
	47YXw/q/GSnVRtu5WqoZ2IUdFZmldNSvCtJTxye9zMa/FHLAv9QQlcbu3Wq/2eiYXLlCgsTutvctd
	0cKuAYyX6GIucotaLwJprM+TCKwRw5iz5Rfq4YwxqDnmyRZD9hHDn6GriQI4rwOL+SFzIiVCJQHTB
	WTgn/MMnpQ1RhaFyBtduedWr0mkYMicMbnq6TAToiKevB60Hh7IjOVEP9rQFl9TVlYvejcjpszi+0
	U1A5hWrlgGqWi8o4Ep0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsYbW-00BUcy-68; Sun, 13 Jun 2021 22:29:18 +0000
Received: from vmse01.mailcluster.com.au ([2401:fc00:2:13f::6])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsYbL-00BUVP-2m
 for barebox@lists.infradead.org; Sun, 13 Jun 2021 22:29:09 +0000
Received: from vmcp03.web-servers.com.au ([116.90.56.28])
 by vmse01.mailcluster.com.au with esmtps (TLSv1.2:AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marc@cpdesign.com.au>)
 id 1lsYaM-0005fK-Cu
 for barebox@lists.infradead.org; Mon, 14 Jun 2021 08:28:15 +1000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=cpdesign.com.au; s=default; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1eDMA3HhmISjO50+tBIlpR68uAHcJZz0HP8C8ge6ocU=; b=KXWyEFRzQoTJ/y+V01yLfxeRLc
 IWkBkLaSGK6ld+DuwmcSY8YcNHY9zJtjRLwYrna1W5JJhuKTJrE/FDtXsa5LVjBTczznuMpfC9D0M
 LBe/bQTOd6XTzY0Dat6KRBnSZNH5y9nObc2bHnv3EywPCHNi6kjkVEJ5k+aXaqiBia5htQRNGgcfd
 sJR1yO+pNV+OfDplUftXDH5hxcaVrnfY0Y0y0wrf61cnNAeNpJoWF9pz1SYAGdZvjfQQLJp0gJogc
 hSKfTsZy9cDT7x2ZAf/2PzsORzKVq0XoYWgzmWMH8ejvGxcsnY/0fgov5AkzcZuAgD36w7MyqDr1o
 o2IrAl1w==;
Received: from 60-242-242-93.static.tpgi.com.au ([60.242.242.93]:52578
 helo=linux.local)
 by vmcp03.web-servers.com.au with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <marc@cpdesign.com.au>)
 id 1lsYZh-00Fwoa-NM; Mon, 14 Jun 2021 08:27:25 +1000
From: Marc Reilly <marc@cpdesign.com.au>
To: barebox@lists.infradead.org
Date: Mon, 14 Jun 2021 08:26:37 +1000
Message-Id: <20210613222639.13190-2-marc@cpdesign.com.au>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210613222639.13190-1-marc@cpdesign.com.au>
References: <20210613222639.13190-1-marc@cpdesign.com.au>
MIME-Version: 1.0
X-Authenticated-User: marc@cpdesign.com.au
X-Authenticator: dovecot_plain
X-Originating-IP: 116.90.56.28
X-SpamExperts-Domain: panthur-sh-outbound0.mailcluster.com.au
X-SpamExperts-Username: 116.90.56.28
Authentication-Results: mailcluster.com.au; auth=pass
 smtp.auth=116.90.56.28@panthur-sh-outbound0.mailcluster.com.au
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: SB/global_tokens (0.00244450916238)
X-Recommended-Action: accept
X-Filter-ID: Pt3MvcO5N4iKaDQ5O6lkdGlMVN6RH8bjRMzItlySaT8dKqtafrdgZZvWleqhNCjrPUtbdvnXkggZ
 3YnVId/Y5jcf0yeVQAvfjHznO7+bT5zzRQC/PIR0ZeIYukWs6zeuXFWCX8oNdggW7HE9XDTdSavp
 k7Vp2UXVHEQMIct0liLE3jyAdOzGkWEKrvQoJAUJswKQDamPN66SYe4XX4xmgJvmHZIaOCPnuqIf
 UsnKQndaIN+MTJ88TTpoG8fQ5knApuGXed8VjoeeEKguXydrkRh+lS1IZOmkeVqtBBDwWUaGKpfT
 IF8fSxNC0LttVkKWCvX50FqPnOjxx3ysNl11MvsDcLC0U2KR6OWH3DJPpNlNxaypTbp28NxghjNo
 pU/Oaqj4KISIRSJ5MfjE8OaunZEyYYf7TmlI3iEcqXK4A61ChHMQHCMEWTX9HEhwSP4/MSl+mev0
 M9cO0xP2892D0Uv5/hXXQF+f2WAemEBBH0NsVeB41VPmQWlT6X4HxPATd38b9MLKMY00g8iKb4Ma
 HkcFBAvuf345Nnfstl8j+xb35lDPKa+hEyOYER4dYqg19L79JWHANylAmdcW1ioqKAhIbSJTbn3p
 hW1N8stWViDDh0zYybFfFGb1BguKhGQS1815h2jfNCQvp3x+etU3v+gbaW5naTC7zOfGQeBlb2X7
 4O4hBSz/kkmPgL+fgIguB5c2vNNHcCWHRR4knes+uF6t1gj1W/Usfpu6RQz7+k4utzWlI1fFBPwU
 UpCjhckszpIiZ3aYsCU80RnzQz1brqcneM2DtFL6lyn3SdWY2VjHp+W1tpo+4KZfjXpfNmlerfOY
 3UNVu8TOdjOCr0g4mxFW6BNL/LNNOwdMx+faYopHdCUDK0lwKtLTqkxfwugNnGl6uWK/lQde2xKZ
 QD0+Kuh0+7DYw1wFWaNfIc/p8kBm4zuNRcgRKiGg7nXFaZTxkthHBBd+1FGtrHfmRLr1mA3ARdV5
 AZf6qXuoaniPBKa/K7PRiH9N3uNqUeLkT9H/YAvNrlNPDcRjUdyh4v23HFAB9fsWrjkhC+/VkwPD
 61O38M3G5FnJSs4QlaOH81x50MxOKVrDfQzDgqFDumjx949yYjkgur7cbmMvzASyKBHM3xi8wXJI
 Uf8Y97QTxRrgRfBTyao+gSRn3B4C0WLGZPe4LJ2MyI6lLpoeMdMOO8Y=
X-Report-Abuse-To: spam@vmse01.mailcluster.com.au
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210613_152907_194691_BF13BEE2 
X-CRM114-Status: GOOD (  10.99  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] ARM: beaglebone: add helper init script for checking if
 BBBW
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds a check against the eeprom contents to see if the board is a
Beaglebone black wireless. (two bytes at offset 0x12 of eeprom will be
"BW").
If it is, the global board.variant is updated to "boneblackwireless"

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 .../defaultenv-beaglebone/data/bbb-eeprom-0x0C      |  1 +
 .../defaultenv-beaglebone/init/check-bbb-type       | 13 +++++++++++++
 2 files changed, 14 insertions(+)
 create mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/data/bbb-eeprom-0x0C
 create mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/init/check-bbb-type

diff --git a/arch/arm/boards/beaglebone/defaultenv-beaglebone/data/bbb-eeprom-0x0C b/arch/arm/boards/beaglebone/defaultenv-beaglebone/data/bbb-eeprom-0x0C
new file mode 100644
index 000000000..258b93951
--- /dev/null
+++ b/arch/arm/boards/beaglebone/defaultenv-beaglebone/data/bbb-eeprom-0x0C
@@ -0,0 +1 @@
+BW
diff --git a/arch/arm/boards/beaglebone/defaultenv-beaglebone/init/check-bbb-type b/arch/arm/boards/beaglebone/defaultenv-beaglebone/init/check-bbb-type
new file mode 100644
index 000000000..b7c8b3683
--- /dev/null
+++ b/arch/arm/boards/beaglebone/defaultenv-beaglebone/init/check-bbb-type
@@ -0,0 +1,13 @@
+#!/bin/sh
+
+memcmp -b -s /dev/eeprom0 -d /env/data/bbb-eeprom-0x0C 0x0c 0x00 2
+result=$?
+echo $result
+
+if [ $result = 0 ]
+then
+        echo "Beaglebone Wireless detected"
+        global.board.variant=boneblackwireless
+else
+        echo "Beaglebone Black (non-wireless) detected"
+fi
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

