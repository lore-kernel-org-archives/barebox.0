Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gU5x0-0003Sv-Ns
 for barebox@lists.infradead.org; Tue, 04 Dec 2018 08:21:04 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Tue,  4 Dec 2018 09:20:38 +0100
Message-Id: <20181204082038.360-1-r.hieber@pengutronix.de>
In-Reply-To: <20181204074958.x6bntw4czthc75ye@pengutronix.de>
References: <20181204074958.x6bntw4czthc75ye@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH] fixup! drivers: caam: add RNG software self-test
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Roland Hieber <r.hieber@pengutronix.de>

Demote this warning to an info because the failure is expected and we
can work around it. The self-test will still error afterwards in case of
failure.

Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
---
On Tue, Dec 04, 2018 at 08:49:58AM +0100, Sascha Hauer wrote:
> On Mon, Dec 03, 2018 at 11:52:26AM +0100, Roland Hieber wrote:
> > Hi Sascha,
> > 
> > > + pr_notice("RNG software self-test passed\n");
> > 
> > I noticed that you downgraded this to a pr_info() when applying the
> > patch, is there a reason?  pr_warn()s have the "WARNING:" prefix,
> > pr_notice()s have a "NOTICE:" prefix, but pr_info()s don't have any
> > prefix. I think this one should be a pr_notice because it overrides the
> > pr_warn("RNG self-test failure detected...") from HAB and tells the user
> > that this warning is no longer relevant. With pr_info(), I think it will
> > get lost between all the other infos.
> 
> I can follow this argumentation, but then I argue we should lower the
> priority of the failure detected message to to pr_info or even pr_debug,
> because the failure is pretty much expected, it is correctly being
> worked around and there's nothing we can do about the failure.

Right, that argumentation seems more reasonable to me.

 - Roland

---
 drivers/hab/habv4.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index bab458ae32..cca46c1490 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -455,7 +455,7 @@ static int habv4_get_status(const struct habv4_rvt *rvt)
 		}
 
 		if (is_rng_fail_event) {
-			pr_warning("RNG self-test failure detected, will run software self-test\n");
+			pr_info("RNG self-test failure detected, will run software self-test\n");
 			habv4_need_rng_software_self_test = true;
 		} else {
 			pr_err("-------- HAB warning Event %d --------\n", index);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
