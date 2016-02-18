Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aWND5-0007Xc-E0
 for barebox@lists.infradead.org; Thu, 18 Feb 2016 11:57:28 +0000
Date: Thu, 18 Feb 2016 12:57:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160218115710.GH3939@pengutronix.de>
References: <20160217181456.GZ5868@nataraja>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160217181456.GZ5868@nataraja>
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
Subject: Re: of_state_fixup / different path in barebox and kernel
To: Harald Welte <laforge@gnumonks.org>
Cc: barebox@lists.infradead.org

Hi Harald,

On Wed, Feb 17, 2016 at 07:14:56PM +0100, Harald Welte wrote:
> Dear List,
> 
> I have a custom board with an AM335x on it.  We used to have an I2C
> EEPROM for keeping the boot state, but moved that to SPI in a subsequent
> version.
> 
> The SPI EEPROM uses gpio-based chip select, which is supported by linux
> kernel spi-omap2-mcspi.c.  However, it is not supported by barebox.
> 
> My "solution" was to simply use the gpio-bitbang in barebox, which also
> works fine for those few bytes that need to be read, performance doesn't
> matter.
> 
> Now however I can no longer boot any kernel image, as of_state_fixup
> fails in
> 
> 	backend_node = of_find_node_by_path_from(root, state->backend->of_path);

In newer versions we have:

commit b62aea561142c6974b593301fbec9ed18381cf8d
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Thu Sep 10 15:11:28 2015 +0200

    of_fix_tree: do not fail when fixup fails

So at least a failed of_fixup should no longer prevent you from booting.

> 
> due to the fact that the of-path of the EEPROM is different in the
> barebox device tree (/spi_gpio/m95m02@0) than in the kernel device tree
> (/ocp/spi@481a0000/m95m02@0)
> 
> Is there any designated solution for this situation?

We could introduce a state.of_backend_path variable which holds the
path, something like attached. You would then have to change the
variable to the correct path somewhere.

Another way I could think of would be to add a possibility to blacklist
of_fixups. That would do it aswell since you could provide a correct
device tree for the kernel, right?

Sascha

-----------------------------8<-------------------------------

diff --git a/common/state.c b/common/state.c
index 3e95efd..223d00d 100644
--- a/common/state.c
+++ b/common/state.c
@@ -56,7 +56,7 @@ struct state {
 struct state_backend {
 	int (*save)(struct state_backend *backend, struct state *state);
 	const char *name;
-	const char *of_path;
+	char *of_path;
 	const char *path;
 	struct digest *digest;
 };
@@ -1642,6 +1642,7 @@ int state_backend_raw_file(struct state *state, const char *of_path,
 	struct state_backend *backend;
 	struct state_variable *sv;
 	struct mtd_info_user meminfo;
+	struct param_d *p;
 	size_t path_size = 0;
 	int ret;
 
@@ -1680,6 +1681,13 @@ int state_backend_raw_file(struct state *state, const char *of_path,
 
 	state->backend = backend;
 
+	p = dev_add_param_string(&state->dev, "of_backend_path", NULL, NULL,
+				   &state->backend->of_path, NULL);
+	if (IS_ERR(p)) {
+		ret = PTR_ERR(p);
+		goto err;
+	}
+
 	ret = mtd_get_meminfo(backend->path, &meminfo);
 	if (!ret && !(meminfo.flags & MTD_NO_ERASE)) {
 		backend_raw->need_erase = true;

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
