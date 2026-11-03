Delivery-date: Tue, 03 Nov 2026 22:32:56 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xOM7k-006wXX-0M
	for lore@lore.pengutronix.de;
	Tue, 03 Nov 2026 22:32:56 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E28FB202BA9
	for <lore@pengutronix.de>; Tue, 03 Nov 2026 22:32:51 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=N14JXAgG;
	dkim=pass header.d=puzzle.ch header.s=20211230 header.b=UNA4EyN5;
	dkim=pass header.d=puzzle.ch header.s=20211209 header.b="SPGbt6k/";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=puzzle.ch
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793741572;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=rZCaDinYS9GIsGl5z4xW1Mqfe1wtDLV0RH0I208BMtk=;
	b=C6eRujlcFqwjDaZJIfE04imigF4JhpYyMO+PdJfpzJq10rOxNOG7KO8HuYvl7PdliT0Qhx
	ke9VMD6HVO3X6aMfCY2XaIeet3d4Rz+0swDNYpjnoaQPNk5+RjZNPmEEr7OpeQzXf98aDm
	5ZbxrMh7RgZD+Np4/OCgK5Ijx3HXLV4fmq8QkeiDA+0UjxboS6ZszWGe7PbvT7aaepSv9I
	b7lLFS85t/is1jlEg23AgZ7HHWxggatIeEj9DNpKBGMgBYc2YaZzbtBj4cTtI+XbIUEdGw
	+dh78kbTt1cXr+g4Pqg8f+8PN7BrszVhJYUnfPKXTd2KXutj24g9EW5DA+Mq3A==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=N14JXAgG;
	dkim=pass header.d=puzzle.ch header.s=20211230 header.b=UNA4EyN5;
	dkim=pass header.d=puzzle.ch header.s=20211209 header.b="SPGbt6k/";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=puzzle.ch
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793741572; a=rsa-sha256;
	cv=none;
	b=SRi1cZvtKBMAZ6Cy249jch7nnTu3UwAiVdR/16x6GvpFklQCVaOHuEeRA8ntdZuOw/eusP
	vOXHc1Gn4iDl8cj2Khlkg0XxU3PTIzeTxcBju7eFv6TF42FxSkPPcDFWO6Bt0voXoj9tK1
	RbyorrtELBqWYZxavcRhxnPu0pvVWWa0kGS+rEPb4YK+ItTyo3PuBCkozn+nXSmeeNw3dt
	tHG/vM4q4zwki+CO3vy4Ul0w7neQXMxq3ZQJ9EIGFcyG3pPBDzOjSfaK1rX0C8P7C6JpqU
	bTZhpCilpuueDZNc+zBVNPcFUoMdrXkRkDOmfLjtFRiS1272Fvogi8xwgcrsxQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=rZCaDinYS9GIsGl5z4xW1Mqfe1wtDLV0RH0I208BMtk=; b=N14JXAgGionTfy4FXhy+55oD75
	7F6pEQ8YuG0uXSkHZyQGZO/dvS6vG3S5D6eqcUuzeh3uDjjfbbq9RVNPmPTSfG55DMkN5zOQBdVS3
	aGfkA6fhc7UVV9DzqnDUJ+8qLVcOMantF7r7juI06oUqAoKh8U+lBm4M7ptucSG4Rbz7LwpFs059p
	cnlfKd0K/jNu/OqOOmiQRwcVLc4YUCZm5ogRfgzeLCRYDJB6naIYWSu+CjBQzCZc0kqRHapb/EZJR
	ObfLSHgOXZTMF/IjnW+RbxOs9Huck8e2fydbE4nVpqvbzbX7cKCXRCGmfxMIOPMFT1n6T8jjz3D9g
	ZjufSMRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOM6Q-00000003iDF-46P0;
	Tue, 03 Nov 2026 21:31:34 +0000
Received: from mx03.puzzle.ch ([2a06:c00::5e55])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOM6K-00000003i3E-2bnx
	for barebox@lists.infradead.org;
	Tue, 03 Nov 2026 21:31:33 +0000
Received: from mailstore02.cloud.puzzle.ch (mail.puzzle.ch [45.81.71.99])
	by mx03.puzzle.ch (Postfix) with ESMTPS id 10F09111;
	Tue,  3 Nov 2026 22:31:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=puzzle.ch; s=20211230;
	t=1793741478;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=rZCaDinYS9GIsGl5z4xW1Mqfe1wtDLV0RH0I208BMtk=;
	b=UNA4EyN5d3y7Fz27VXrB+QkVlmbodo/Rn+ClDA+Boo6NVECtbU0058ZmVuMYrIaft7EcQn
	cQWuqxW+AbI6jYX4YvhhLC1SD8pnoxbmMrTqzggxED53PonmRNuJLtUqy/m0Ien9eWLQ+y
	zigQPHgp3IDqlMYFvi+VWlPqac6ya38MS8WsmAdA9My2Yi7IPv6Ju5GrX6ZaCY/kSXjAOC
	mYL09kImaEWyRd2EqXZg6BpSwHQNHNcvhAYtWdRdbRVr4hJhuv8nWl4WaTuzNc0M+EBfnk
	1Mqf8KjQ9ZviAd/ZUBXCFawTnQDcff9rWEeMyTI71ABeZMPrDQBZFLnT+GFvDA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=puzzle.ch; s=20211209;
	t=1793741478;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=rZCaDinYS9GIsGl5z4xW1Mqfe1wtDLV0RH0I208BMtk=;
	b=SPGbt6k/tjkbMwQvm81lSQj3BjiLGc8+ofgPn7xsqHwXcgARVdegCttcaIOSLa0QVvR+23
	irSYRvGNV9WaWiMkCBGQxD4QY3l4EuRkTUhabNMwqpjDCpIMam1ggXtdJw8uErM7dVXpYA
	5xRsAP7y9/dlzYnYDZTtUy7C5Te6ziEb+7T/dY6CSQUbd5Msu3Xpxq4m1rE2lilMbW6xi4
	iGA+pNTSB9pj+/yufndjobFaj//Cv9AYCd5i05q/LvkA21iq1SwNI8/CAZlHWnWWWiBuqF
	w3+h0fTjUPw0qUDrioTFdm17w3XLgkSQZPfwPa3s9Zh6VH4FCDgRwfo+n4cgCA==
From: Michael Grzeschik <grzeschik@puzzle.ch>
Subject: [PATCH 0/6] orion/kw/mvebu: stability/usability patches
x-ms-reactions: disallow
Date: Tue, 03 Nov 2026 22:31:06 +0100
Message-Id: <20261103-orion_kw_mvebu-v1-0-86442c0d283e@puzzle.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMWw5AMBCF4a3IPGuiKnXZikijDIa4pHVLxN4Vj
 19yzn+BRUNoIfMuMLiTpXly4L4HVVdOLTKqnSEMQsl5INhs3EINhxp31BvTcSSbRIoolQLcaTH
 Y0PkF8+K33XSP1fpW4L4fNoTXU3IAAAA=
X-Change-ID: 20261103-orion_kw_mvebu-b746f8634963
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Michael Grzeschik <grzeschik@puzzle.ch>
X-Developer-Signature: v=1; a=openpgp-sha256; l=1092; i=grzeschik@puzzle.ch;
 h=from:subject:message-id; bh=G8gdUS/kMS/Fjk2E9XteDWjUJm++ja04astSjeR6xes=;
 b=owEBbQKS/ZANAwAKAb9pWET5cfSrAcsmYgBq6lKk2vcZfR+pmLFrY+xnPvmdGSgbExFdfSTnc
 nABBjqACTCJAjMEAAEKAB0WIQQV2+2Fpbqd6fvv0Gi/aVhE+XH0qwUCaupSpAAKCRC/aVhE+XH0
 q96KD/4qG7LYtsaOupx+Nhda6DxCsyxbgHaTyk1MI0eh3zcCXu1dOH2eD84uq9Gho2Kgu7km7+C
 wHBlcqDOh9vfIAOitOoWiDJFGNK6x9PaTHif7VvC0dWl16rnuYMY9TznYidHHziLC5HZfZbv9ue
 4d8DjGC3TodXADY2y4GpsnVOTHOr17ODQ2DJtRins8KSCtSuYzjqel/P6eJH5HXiAnIwkKhJ1HJ
 TE1vFTvVfQSiVq2oNqUTFEETTAeBGjcAPF/CIRLl5SsFzUFbMATg06vaOAvq3AXenynFnPUqQ2p
 m2HFfnpaT+gACK3CfXf4naR5dJXO+Vhya6aaevjOo5cFQSVIyXFwZDQvDO6NSCP5Vbb0i+D3+L6
 AdDmPGs9M6sbQP1gpbGusV8Z2q3UYdDZvDdDg9TCtGbTPO5BcWSDmV2zZjiK9roEImMq1zklm4t
 uDiPG0t7DHx7uGDlQmgkAxNQy5zsLE8O+8ZM3gjDeSc9bZREC+LbdHQldx7nAQNQBE9gEcmUjex
 vFed97SuP+OwBiyAP7oFTDJf+jBctg1OhWn1bCqBhKwRsepue4tC0ZAB5rzqKqE2NmgObMWiDmz
 OXNU3w2Rwt8nbcwexi0iFB0W0392X4idDVdw9jxBNCzDumpRVtJbqlWAkdwsrbmGlZP9TdfydXF
 Q+IJ73mTjmZynvA==
X-Developer-Key: i=grzeschik@puzzle.ch; a=openpgp;
 fpr=957BC452CE953D7EA60CF4FC0BE9E3157A1E2C64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_133128_930176_AADEC632 
X-CRM114-Status: UNSURE (   5.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  While porting an older iomega iConnect machine to the latest
    version of barebox, several shortcomings were identified. This patch series
    addresses and resolves these issues. Signed-off-by: Michael Grzeschik <grzeschik@puzzle.ch>
    --- Michael Grzeschik (6): images: mvebu: skip images whose binary header
    is missing mtd: nand: orion: set Hamming ECC algorithm in ->attach_chip [...]
    
 
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
X-Rspamd-Queue-Id: E28FB202BA9
X-Spamd-Result: default: False [-7.89 / 15.00];
	BAYES_HAM(-2.98)[99.91%];
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
X-Stat-Signature: hic3kwg1dgwodnichami79dmxd1td9kn

While porting an older iomega iConnect machine to the latest version of
barebox, several shortcomings were identified. This patch series
addresses and resolves these issues.

Signed-off-by: Michael Grzeschik <grzeschik@puzzle.ch>
---
Michael Grzeschik (6):
      images: mvebu: skip images whose binary header is missing
      mtd: nand: orion: set Hamming ECC algorithm in ->attach_chip()
      gpio: orion: do not let banks without alias collide
      filetype: detect kwbimage v0 images for NAND boot
      mtd: nand: orion: register the NAND device as "nand"
      gpio: orion: register at coredevice level

 common/filetype.c                 |  9 +++++++--
 drivers/gpio/gpio-orion.c         | 18 +++++++++++++++---
 drivers/mtd/nand/raw/nand_orion.c | 22 ++++++++++++++++++++--
 images/Makefile.mvebu             | 23 ++++++++++++++++++-----
 4 files changed, 60 insertions(+), 12 deletions(-)
---
base-commit: 6a8b1f474121f10f9faeb59268b4ec63d1bd1be2
change-id: 20261103-orion_kw_mvebu-b746f8634963

Best regards,
--  
Michael Grzeschik <grzeschik@puzzle.ch>



