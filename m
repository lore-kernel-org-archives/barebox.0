Delivery-date: Mon, 16 Mar 2026 17:01:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2ANg-001U58-2O
	for lore@lore.pengutronix.de;
	Mon, 16 Mar 2026 17:01:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2ANd-0002fP-Ap
	for lore@pengutronix.de; Mon, 16 Mar 2026 17:01:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bkra2chZA5aSFkf9pX83loYHbxE7gefo0SVa/7aZVKE=; b=utEUWqwewCROqd
	6zbvCKvCcs0FcqjsssB/9s72YH2Y372QX9qXNFXRtG7q/EyHhjgWr8P67Lpq3JL6T+K+YqytVJ73g
	gHq6Oqcl1KYDAJKp1gGuYyeH2eiLDgufaP8LFyam7MNDDk8lGZhBouuiRgLd7ehxH8wOr2rBc/9iE
	VQKTGmZbCfOPHHwH/SWlp2bhrLXZlCbtTbqgEvWuIW7HEzG9FDcD5MnhujYy5Vmzgz/o8iXXkePN1
	uiqSvUGdDPR/KpHXEWQTHWThWY6HpS+VusJosDS8qd47zxEyx+wdO5yAYvXiRjfvLCrpwBFfqba+U
	7EMmOKnm0CiXr2PtdA5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2AN1-00000004OeK-3NYd;
	Mon, 16 Mar 2026 16:00:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2AMz-00000004OdE-1lFf
	for barebox@bombadil.infradead.org;
	Mon, 16 Mar 2026 16:00:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=bkra2chZA5aSFkf9pX83loYHbxE7gefo0SVa/7aZVKE=; b=d2oK9JtDVfFV2ilpc8nmTssR1l
	/sJo23nWZp4GiCtVuCJyFLhigJslEoWSOst7PttugCUA46y9vH3Gn8OdJHotkrE0ayInLHYNvl6XB
	do+coEeSTyzrRFtJGh+MIVGf/v7e156gyGGbVY9ARhntFjgIp30Mwh0qbzJGb5LgX8qWfM8YwcBdT
	qQSivilpYzHHWm/W1vInOXX1s117/b9FdR8rGnKn54HJKIf1hwQnxobWNIIatauxpP7XAQPjC/veP
	5aZ5zXasWOP+onyjtR+zp80REB5yzt6jhyrGd76mh8bBqhOdPzLLC/dp4ikfnXK2vEcayjRhIGbC0
	nD4gAzQw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2AMu-000000079AC-2eTf
	for barebox@lists.infradead.org;
	Mon, 16 Mar 2026 16:00:39 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1w2AMs-0002LF-Fp; Mon, 16 Mar 2026 17:00:34 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Mon, 16 Mar 2026 17:00:23 +0100
Message-Id: <20260316-keytoc-multi-env-v3-0-433591ef3198@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABcpuGkC/33NTQ6CMBCG4auYrh3TPxtw5T2MiwIDNGpL2tJAC
 He3sDLRuHy/ZJ5ZSEBvMJDLYSEekwnG2RzieCB1r22HYJrchFOuKKcKHjhHV8NrfEYDaBNILQS
 lvOQoNclng8fWTDt5u+fuTYjOz/uHxLb1D5YYMFCiaKuWV0IJeR3QdmP0zprp1CDZxMQ/FFb8U
 DhQEKiZVHV5bljxpazr+gZmUgAA+wAAAA==
X-Change-ID: 20260206-keytoc-multi-env-4a3300292e4a
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.15-dev-18f8f
X-Developer-Signature: v=1; a=openpgp-sha256; l=1574; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=6Hh9nIrA/vXr9Oq0XKb/HN44ecjTaDvITOIcYpld3Nk=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjcoamwoc91Ya0cR4D5evVTgiYu3/n2P3Ocouc5PXJWy
 uFD3k1pHaUsDGJcDLJiiiyxanIKQsb+180q7WJh5rAygQxh4OIUgIkkijP8D5+y406v2t5Nt6x7
 33j8nTavQa/lzOJwdbvnl2RYj0u8yGZk2LZ6rnJU1t/dbzmWTrg4s/B8xPXjv8qSzkbN9RWeeyN
 6Px8A
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_160036_822436_3AD5C770 
X-CRM114-Status: UNSURE (   6.58  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Jonas Rebmann <jre@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 0/4] Allow multiple keyspecs in one environment variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This contains the actual change to keytoc as well a migration Note.

Allowing any number of public keys to be provided via a single
environment variable eases integration in more complex setups where
multiple public keys per keyring are managed externally.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
Changes in v3:
- Where possible, split refactoring/cleanup into a preparatory commit
- Split copying strsep_unescape into a separate commit
- Link to v2: https://lore.barebox.org/barebox/20260218-keytoc-multi-env-v2-0-3ea146c95d18@pengutronix.de

Changes in v2:
- Split up the keyspec environment variables when multiple are provided
  too.
- Use strsep_unescape instead of manual split/unescape
- Remove RFC tag
- Link to v1: https://lore.barebox.org/barebox/20260206-keytoc-multi-env-v1-1-638fbf2b3634@pengutronix.de

---
Jonas Rebmann (4):
      scripts: include: Add string_util.h for strsep_unescaped
      crypto: keytoc: Improve readability
      crypto: keytoc: Split env-provided full keyspec on spaces
      Documentation: migration-guides: Document change in keyspec env vars

 .../migration-guides/migration-master.rst          | 17 +++++
 scripts/include/string_util.h                      | 65 +++++++++++++++++++
 scripts/keytoc.c                                   | 72 +++++++++++++++-------
 3 files changed, 133 insertions(+), 21 deletions(-)
---
base-commit: ff814eff55e898037503e942df8e0ba8f1b13222
change-id: 20260206-keytoc-multi-env-4a3300292e4a

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



