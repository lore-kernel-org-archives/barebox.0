Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22b.google.com ([2a00:1450:400c:c05::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X067X-0008LT-Lv
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 09:37:32 +0000
Received: by mail-wi0-f171.google.com with SMTP id n15so669957wiw.4
 for <barebox@lists.infradead.org>; Thu, 26 Jun 2014 02:37:09 -0700 (PDT)
Date: Thu, 26 Jun 2014 11:37:03 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140626093701.GA9619@omega>
References: <1403772557-28482-3-git-send-email-holgerschurig@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1403772557-28482-3-git-send-email-holgerschurig@gmail.com>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/4] sandbox: only access of_add_memory_bank if it's
 defined
To: Holger Schurig <holgerschurig@gmail.com>
Cc: barebox@lists.infradead.org

Hi Holger,

can you please check if this is also a solution for this?

diff --git a/include/of.h b/include/of.h
index e6993fd..76845e7 100644
--- a/include/of.h
+++ b/include/of.h
@@ -227,7 +227,14 @@ int of_parse_partitions(struct cdev *cdev, struct device_node *node);
 int of_device_is_stdout_path(struct device_d *dev);
 const char *of_get_model(void);
 void *of_flatten_dtb(struct device_node *node);
+#ifdef CONFIG_OFTREE_MEM_GENERIC
 int of_add_memory(struct device_node *node, bool dump);
+#else
+static inline int of_add_memory(struct device_node *node, bool dump)
+{
+       return -EINVAL;
+}
+#endif
 void of_add_memory_bank(struct device_node *node, bool dump, int r,
                u64 base, u64 size);
 struct device_d *of_find_device_by_node_path(const char *path);



If this works for you then this is missing. Maybe there are some other related
function which depends on CONFIG_OFTREE_MEM_GENERIC, I didn't check it.

I think this would be a better solution, if it works...

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
