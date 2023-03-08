Delivery-date: Wed, 08 Mar 2023 15:46:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZv49-00DgQJ-5t
	for lore@lore.pengutronix.de; Wed, 08 Mar 2023 15:46:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZv48-0007S1-OA
	for lore@pengutronix.de; Wed, 08 Mar 2023 15:46:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e3V8L+PcATT8WV6DlgDczLOF/MFa+3QpCOFKLt8G05c=; b=oi1eUEW9K5RRbY0TK8zn0jbX8t
	qLrl7mByL7ciqOQM5F+fRuSxmppNY4vADs67lvXm0Zbu5lhUdyHnW7+BqMjARXeB2SeuJNX9Aul/u
	TRyOZNWyPDVRAUqJi6RH+ptrLpAij3Ix0Oev8PtqKH0cN6mHU6TE9CU0XrKS4bFCoGn3BPX4wy4VH
	qRAj7nD/Uo3F+w5dkH1TLue6MT/JmpYxHbhiluyjta8SyKWG0PZdYIBNYC7AkomPZrp4iyzLZ9dwR
	4UmBHsHw9jad/WSA0jaPfn4uws11c8osnp2nIjWLcE3yLhCSUcR4LjVQY+mqGE02HG/2mEQdyJQgx
	uqd9r3lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZv2t-005XxK-HH; Wed, 08 Mar 2023 14:45:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZv2q-005XwI-2Q
	for barebox@bombadil.infradead.org; Wed, 08 Mar 2023 14:45:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=e3V8L+PcATT8WV6DlgDczLOF/MFa+3QpCOFKLt8G05c=; b=RC/AzuRKJMUEdx69tMPnmpcTo7
	c1vpj7hfZC01ieFsucZLOBmFVHGsHl6NcjzH0cn8fvj+xgrdDsSEXLy423Pd5Rt3mi03yitCzEG1O
	eYdMgBJ7vSrqrJo+Oj1/SM/TNWNrwcNwW36HNnVMlLQvZ8Yp04rPv16n4GpEFG8ERgne4RyR8tpZi
	+dxFll2wBa6nU9M9txFV+zNtfdazIoPVCaJTrh/oJo2sXElXqcffzJ1Jjpci0vBGQxWWlmol/IQM7
	8SVZZCdY998TjyHlyHM1LsboVXxco3JGG0592jDsSiq+KiKW2sY0P5kJXhIhF4+i4TUO8QQNYQJqV
	Y9xh4IZw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pZujB-00HP0l-30
	for barebox@lists.infradead.org;
	Wed, 08 Mar 2023 14:25:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pZuj6-0002wq-HM; Wed, 08 Mar 2023 15:25:08 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pZuQN-002jG4-Rp; Wed, 08 Mar 2023 15:05:47 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pZuQM-00E7mF-H7; Wed, 08 Mar 2023 15:05:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  8 Mar 2023 15:05:42 +0100
Message-Id: <20230308140545.3366052-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230308140545.3366052-1-s.hauer@pengutronix.de>
References: <20230308140545.3366052-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_142514_066703_FFBCC798 
X-CRM114-Status: GOOD (  12.58  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/7] spi: Directly register SPI device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SPI devices described in the device tree are not directly registered,
but instead added to the SPI board_list which is normally used to
register SPI devices from board code. This seems rather unnecessary,
drop this detour and register SPI devices directly from
spi_of_register_slaves().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/spi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index d6f939e51c..1444fe3741 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -138,7 +138,7 @@ static void spi_of_register_slaves(struct spi_controller *ctrl)
 			continue;
 		chip.chip_select = of_read_number(reg->value, 1);
 		chip.device_node = n;
-		spi_register_board_info(&chip, 1);
+		spi_new_device(ctrl, &chip);
 	}
 }
 
-- 
2.30.2



