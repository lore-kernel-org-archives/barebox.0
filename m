Delivery-date: Thu, 18 Sep 2025 09:45:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz9L5-004O0j-19
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 09:45:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz9L4-0001qu-A7
	for lore@pengutronix.de; Thu, 18 Sep 2025 09:45:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GZQlI36PLFldgwHUHXPjSASYmAl4XDmbv8VJ37WJGqA=; b=0ap0gHNK6gtHg1/ZQstpiOCZu4
	B/8JKO6v+E1ktGcyNFl2lk0s09CeVEV+irdfDLYZ0quk5gG5TCCa2RaqRRnpfUWwYc0mSpPCn9aEB
	kGeJ9I2Z8VbZTABPbLzKG4eCx2AEelhyLTPYP0lo4ihy4FbfQUrKx9hBF1l2wGP3cVRTnZ283MxyH
	ryOaDXoI4dL3FdsLfdKWqbfkpmyXpxiSkv2M9CNATym6D2FrXzCBEUul/NePAkCRln0WJWOrP6EMG
	bMo72ZltkT/j1I1Wbvk/X9ChKTsE86hmrYE92pW9jplEy8PRux9xedBkn5j6IBL/+TxOfhw6u93XY
	YGDcVdpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz9KT-0000000GaWw-1mJn;
	Thu, 18 Sep 2025 07:45:21 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz9KO-0000000GaPl-2MTQ
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 07:45:17 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-b07ba1c3df4so111909566b.3
        for <barebox@lists.infradead.org>; Thu, 18 Sep 2025 00:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1758181515; x=1758786315; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GZQlI36PLFldgwHUHXPjSASYmAl4XDmbv8VJ37WJGqA=;
        b=vtDc9IKpCWlsUNgh5maEsKJUxnxZ3QHzXn0e8qlrCzaI7B+y7fqb13QMQir+tIszwk
         vFCInfNCoP9FbiUBVED5D6702JcSUKl1QLEQrUZLjFbgeqZ0kpDIz67zDaw5QJmsBeUM
         EP9hg/vS4H2wP2qKE883zFV69w7hKvepXZL8OZpXxpQ/wBHCdXmJ/FaUqFaPw7Wbese+
         1QG1Ydo5q4kEspd1oHGiOjS4AMtwx/NlEv044uswESr+17cIyl0ENk/HQiHvdHWGg7zi
         1tNyDjGnZxeJoPYzF5IqzG5XZYB5j1jGabpGOyMK/XZYKYKU8hyY5e/VNB6gIwrXwVwJ
         Z/1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758181515; x=1758786315;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GZQlI36PLFldgwHUHXPjSASYmAl4XDmbv8VJ37WJGqA=;
        b=sTsqAjdAyZHAIImU6N+Ji71f4Sg2UwFQhxbSi6ABlLB8ctcJq12mPHtC/wl8uz7sS6
         IccNTnn+FonNWcTjYp5xaARqvUXzk1f66gffdtRfrqecUiqz+OLJRwnwh87L7TicyTbc
         AnwTcDB7sDMqmHIZZg4hw2ayehFV2T4FBtrTyDKx3rOX+m5gbscyNo7nh0UglBKooE1/
         NZbIFTHl+AKhyhrIp2v5XRRBnYHOaos4dwZ/c2Jip4DP0PhM9+8j0jz5pCTqyry/RJm+
         TY8621e9lLt3BzOLee42Zr8IAwgoemPE5haliHQgnJRPoa6RcAn/WSgXC6pDvbsKI851
         CeVg==
X-Gm-Message-State: AOJu0YwF9P8BleWJ6WFFgc7Sisgj+IGllqnS2X69siWOIIU3b9DJhoML
	C/kmR1fSC9pU1ThqEN61tqV37PAfUh5tX26khM0HjH8qYbqaQFDa7uF0Z5MUNCzJ33LmMcnaStW
	4AkD+
X-Gm-Gg: ASbGncstv+IAeNtRcr9XHWMs7cr41zB0URYYGDt8py3vx8mGbP4yGgxiyaYccIqbuMI
	fb+ECAGIxOThyQja50flDvsE81oC1qpVi+YZD2Ha0lYGAO0oLycVOL1+HCLoxmX1PpFPt5Qrc0B
	NIUcxl1Vr2d/UYf5EL7xD17G6XqJlVXJqmA+DNNUCJukwnQ5aaeHWezzoPgfbeMMj0ZTOgqgNYZ
	Tih60RCZEiXfG5jwie+L1cRMJqezD9nmgWirrXt0IInKa8A5A4ZaSKWFU2sZyGlOrCXTV6XbZdO
	JqQC9kUwY9QNskh3gliXClYmbmMYgzfCxRXhEfqEPFzupfoIMLApHsibKvglF59xe9NS+p7GZkE
	IpvDL91OOz23ezsWYLjD2uFCAea3nlMsJVXPSzCVAl8oXMPoHkciTUAZwH47s5CkoDvViLIAm7H
	/yt6V/LrJa
X-Google-Smtp-Source: AGHT+IHlpCh8WJTfHWn/QeIDkfkY1n+c2NCxR5tAKI5dCdUWHRhAw8MBmHBm7W+U0SaBuahWRJGBaA==
X-Received: by 2002:a17:907:3e1a:b0:b07:c815:65be with SMTP id a640c23a62f3a-b1bb86d7115mr555842666b.7.1758181514704;
        Thu, 18 Sep 2025 00:45:14 -0700 (PDT)
Received: from wkz-x13.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b1fcfe888bcsm140703166b.71.2025.09.18.00.45.14
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 00:45:14 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Date: Thu, 18 Sep 2025 09:43:21 +0200
Message-ID: <20250918074455.891780-12-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250918074455.891780-1-tobias@waldekranz.com>
References: <20250918074455.891780-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_004516_606784_7EF14852 
X-CRM114-Status: GOOD (  11.52  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 11/11] ci: pytest: Enable device-mapper labgrid tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For targets that support inclusion of the testfs, make sure to inject
all config options needed to run the device mapper pytests.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 .github/workflows/test-labgrid-pytest.yml      | 4 ++++
 common/boards/configs/enable_dm_testing.config | 9 +++++++++
 2 files changed, 13 insertions(+)
 create mode 100644 common/boards/configs/enable_dm_testing.config

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index 6918ea1b98..ccf8ae172c 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -87,6 +87,10 @@ jobs:
           KCONFIG_ADD="${KCONFIG_ADD} CONFIG_CONSOLE_DISABLE_INPUT=n CONFIG_MALLOC_LIBC=y"
         fi
 
+        if [ "${{ steps.used-features.outputs.testfs }}" = "true" ]; then
+          KCONFIG_ADD="${KCONFIG_ADD} common/boards/configs/enable_dm_testing.config"
+        fi
+
         ./MAKEALL -O ${KBUILD_OUTPUT} -l "" -v 0 ${{matrix.defconfig}}
 
         if [ ${{matrix.arch}} = "riscv" ]; then
diff --git a/common/boards/configs/enable_dm_testing.config b/common/boards/configs/enable_dm_testing.config
new file mode 100644
index 0000000000..16c3f702c1
--- /dev/null
+++ b/common/boards/configs/enable_dm_testing.config
@@ -0,0 +1,9 @@
+CONFIG_FS_FAT=y
+CONFIG_DISK=y
+CONFIG_DM_BLK=y
+CONFIG_DM_BLK_LINEAR=y
+CONFIG_DM_BLK_VERITY=y
+CONFIG_CMD_DMSETUP=y
+CONFIG_CMD_VERITYSETUP=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_READF=y
-- 
2.43.0



