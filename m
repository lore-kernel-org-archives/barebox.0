Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d8hPx-0003Vq-0L
 for barebox@lists.infradead.org; Thu, 11 May 2017 06:17:43 +0000
Date: Thu, 11 May 2017 08:17:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170511061719.73uskd22dpy7v2av@pengutronix.de>
References: <91e8e828-d3c3-5c56-0a92-a52c493b8354@mev.co.uk>
 <4208aa68-1cb6-0224-781a-4572a78ba6fd@mev.co.uk>
 <20170508181206.cibrghbpdrjbryx4@pengutronix.de>
 <5a78275c-9b57-567d-c068-81157b0554c4@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5a78275c-9b57-567d-c068-81157b0554c4@mev.co.uk>
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
Subject: Re: Setting MAC address from nv variable broken in barebox 2017.05.0?
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org

On Tue, May 09, 2017 at 11:02:12AM +0100, Ian Abbott wrote:
> On 08/05/17 19:12, Sascha Hauer wrote:
> > On Mon, May 08, 2017 at 03:45:49PM +0100, Ian Abbott wrote:
> > > On 08/05/17 14:39, Ian Abbott wrote:
> > > > Hi,
> > > > 
> > > > I'm not sure if this is a bug or whether I'm doing something wrong.  In
> > > > barebox 2017.04.0 and earlier, I stored the Ethernet MAC address in a
> > > > non-volatile ('nv') variable dev.eth0.macaddr=xx:xx:xx:xx:xx:xx and that
> > > > got propagated to 'global' and the eth0 device on boot:
> > > > 
> > > > barebox@xxxx:/ nv
> > > >   allow_color: true
> > > >   autoboot_timeout: 3
> > > >   dev.eth0.ethaddr: xx:xx:xx:xx:xx:xx
> > > >   user: none
> > > [snip]
> > > > However, in 2017.05.0, my 'dev.eth0.ethaddr' variable is no longer being
> > > > propagated to global on boot, and as a consequence, is no longer
> > > > propagated to eth0 (note that 'dev.eth0.ethaddr' is the only nv variable
> > > > that I set manually when setting up a new board):
> > > > 
> > > > barebox@xxxx:/ devinfo eth0
> > > > Parameters:
> > > >   ethaddr: 00:00:00:00:00:00
> > > >   gateway: 0.0.0.0
> > > >   ipaddr: 0.0.0.0
> > > >   linux.bootargs:
> > > >   netmask: 0.0.0.0
> > > >   serverip: 0.0.0.0
> > > > 
> > > [snip]
> > > > Is this the proper behaviour or a bug?  Could it be related to commit
> > > > 35d8e858bea17ec4796069c9c27fd0b134125eaf ("nv: Do not create globalvars
> > > > from nvvars")?
> > > 
> > > As a related follow-up, this code in globalvar_add_simple() looks a bit
> > > strange:
> > > 
> > > 	if (value)
> > > 		dev_set_param(&global_device, name, value);
> > > 
> > > 	globalvar_nv_sync(name);
> > 
> > Ok, I think this should just be the other way round. Fixed in a patch I
> > just sent.
> 
> Yes, I thought that might be the case about it being the wrong way round.  I
> tested your patch and it works.
> 
> While on the subject, what is the desired behaviour when removing an nv
> variable?  Currently, removing an nv variable also deletes a global with the
> same name, even if the global has changed value in the meantime:
> 
> barebox@xxxx:/ global -r quux
> barebox@xxxx:/ nv -r quux
> barebox@xxxx:/ nv quux=foo
> barebox@xxxx:/ global quux=bar
> barebox@xxxx:/ nv -r quux
> barebox@xxxx:/ global
>   ... list of globals but 'quux' is missing ...
> 
> In 2017-04-0, the global variable remained, although its value was cleared.

Are you sure the global variable is removed? I can't reproduce this
here. Here the globalvar is cleared as it used to be. However, this
behaviour is not very nice and could be changed with the following
patch.

Sacha

-----------------------8<-----------------------------------

From 45a00b7e6518856fab24afd4b883a6f9c18f9b49 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 May 2017 08:11:39 +0200
Subject: [PATCH] nv: When a nv var is removed, do not clear the globalvar

When a nv var is removed, do not clear the corresponding global var.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index c528b24062..4922346130 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -164,12 +164,15 @@ static int nvvar_device_set(const char *name, const char *val)
 	return 0;
 }
 
-static int nv_set(struct param_d *p, const char *val)
+static int nv_set(struct param_d *p, const char *_val)
 {
 	struct param_d *g;
 	int ret;
+	const char *val;
 
-	if (!val)
+	if (_val)
+		val = _val;
+	else
 		val = "";
 
 	ret = nvvar_device_set(p->name, val);
@@ -177,7 +180,7 @@ static int nv_set(struct param_d *p, const char *val)
 		return ret;
 
 	g = get_param_by_name(&global_device, p->name);
-	if (g) {
+	if (g && _val) {
 		ret = dev_set_param(&global_device, p->name, val);
 		if (ret)
 			return ret;
-- 
2.11.0

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
