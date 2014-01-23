Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W6KL8-00014E-OY
 for barebox@lists.infradead.org; Thu, 23 Jan 2014 13:29:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 23 Jan 2014 14:28:37 +0100
Message-Id: <1390483717-7722-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1390483717-7722-1-git-send-email-s.hauer@pengutronix.de>
References: <1390483717-7722-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/3] net: phy: Add static inline wrapper for
 phy_register_fixup_for_uid
To: barebox@lists.infradead.org

Boards register a fixup for a phy without checking if phy support
is enabled. To fix compilation without phy support add a static
inline wrapper for phy_register_fixup_for_uid.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/phy.h | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/include/linux/phy.h b/include/linux/phy.h
index 9994e11..c8980b0 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -296,13 +296,22 @@ int phy_register_fixup(const char *bus_id, u32 phy_uid, u32 phy_uid_mask,
 		int (*run)(struct phy_device *));
 int phy_register_fixup_for_id(const char *bus_id,
 		int (*run)(struct phy_device *));
-int phy_register_fixup_for_uid(u32 phy_uid, u32 phy_uid_mask,
-		int (*run)(struct phy_device *));
 int phy_scan_fixups(struct phy_device *phydev);
 
 int phy_read_mmd_indirect(struct phy_device *phydev, int prtad, int devad);
 void phy_write_mmd_indirect(struct phy_device *phydev, int prtad, int devad,
 				   u16 data);
 
+#ifdef CONFIG_PHYLIB
+int phy_register_fixup_for_uid(u32 phy_uid, u32 phy_uid_mask,
+		int (*run)(struct phy_device *));
+#else
+static inline int phy_register_fixup_for_uid(u32 phy_uid, u32 phy_uid_mask,
+		int (*run)(struct phy_device *))
+{
+	return -ENOSYS;
+}
+#endif
+
 extern struct bus_type mdio_bus_type;
 #endif /* __PHYDEV_H__ */
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
