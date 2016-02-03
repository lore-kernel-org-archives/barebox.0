Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQrxc-0006uY-9m
 for barebox@lists.infradead.org; Wed, 03 Feb 2016 07:34:45 +0000
Date: Wed, 3 Feb 2016 08:34:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160203073420.GG4118@pengutronix.de>
References: <1454296213-12734-1-git-send-email-andrew.smirnov@gmail.com>
 <1454296213-12734-9-git-send-email-andrew.smirnov@gmail.com>
 <20160201093519.GP13058@pengutronix.de>
 <CAHQ1cqGxkLm8axj4TGH4=NnyLjj-HupmD_5Df-tpMgAFsMN9Ug@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqGxkLm8axj4TGH4=NnyLjj-HupmD_5Df-tpMgAFsMN9Ug@mail.gmail.com>
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
Subject: Re: [PATCH v2 8/8] miitool: Add code to register a PHY
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Feb 02, 2016 at 04:41:46PM -0800, Andrey Smirnov wrote:
> On Mon, Feb 1, 2016 at 1:35 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > Hi Andrey,
> >
> > On Sun, Jan 31, 2016 at 07:10:13PM -0800, Andrey Smirnov wrote:
> >> This commit changes the behaviour of the 'miitool'. Now in order to show
> >> PHY's link information 'miitool' should be invoked as such:
> >>
> >> miitool -s [PHY]
> >>
> >> Also, implment code to allow to register a dummy PHY device in order to
> >> be able to perform raw MDIO bus access.
> >
> > These are not necessarily dummy phy devices, in fact if they were you
> > wouldn't be interested in them ;)
> 
> Poor choice of words, perhaps :-). Now that I think of it I think
> "driver-less" would be a better description.
> 
> >
> > Do we need a way to register an individual phy? Wouldn't it be enough to
> > add a -f(orce) option to register all phys on all busses even if there's
> > nothing detected on them?
> 
> If we go with "-f" we would still overwhelm the /dev with a lot of
> devices (in my use-case 96 of them), it's just we won't do that on the
> first run on "miitool".

Ok, fine with me.

What I'd like to do though is the following change. It changes the way
how the mdio bus / phy address is specified. With separate options for
specifying the mdio bus and address it's not clear that the -a, -b and
-r options only make sense when given together, whereas the -a and -b
options are ignored when information is printed.
While at it I added a check for the maximum phy address and added a
<varname> to BAREBOX_CMD_HELP_OPT when an option requires an argument.

Sascha

--------------------------------------8<--------------------------

From d5dc3c3608311175d2250d951d0362a4241e1da0 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 3 Feb 2016 08:15:28 +0100
Subject: [PATCH] fixup! miitool: Add code to register a PHY

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/miitool.c | 35 +++++++++++++++++++++--------------
 1 file changed, 21 insertions(+), 14 deletions(-)

diff --git a/commands/miitool.c b/commands/miitool.c
index 9e86925..ba6e604 100644
--- a/commands/miitool.c
+++ b/commands/miitool.c
@@ -269,14 +269,16 @@ enum miitool_operations {
 static int do_miitool(int argc, char *argv[])
 {
 	char *phydevname = NULL;
+	char *regstr = NULL;
+	char *endp;
 	struct mii_bus *mii;
 	int opt, ret;
 	int verbose = 0;
 	struct phy_device *phydev;
 	enum miitool_operations action = MIITOOL_NOOP;
-	int addr = -1, bus = -1;
+	int addr, bus;
 
-	while ((opt = getopt(argc, argv, "vs:rb:a:")) > 0) {
+	while ((opt = getopt(argc, argv, "vs:r:")) > 0) {
 		switch (opt) {
 		case 'a':
 			addr = simple_strtol(optarg, NULL, 0);
@@ -290,6 +292,7 @@ static int do_miitool(int argc, char *argv[])
 			break;
 		case 'r':
 			action = MIITOOL_REGISTER;
+			regstr = optarg;
 			break;
 		case 'v':
 			verbose++;
@@ -302,10 +305,16 @@ static int do_miitool(int argc, char *argv[])
 
 	switch (action) {
 	case MIITOOL_REGISTER:
-		if (addr < 0 || bus < 0) {
-			ret = COMMAND_ERROR_USAGE;
-			goto free_phydevname;
+		bus = simple_strtoul(regstr, &endp, 0);
+		if (*endp != ':') {
+			printf("No colon between bus and address\n");
+			return COMMAND_ERROR_USAGE;
 		}
+		endp++;
+		addr = simple_strtoul(endp, NULL, 0);
+
+		if (addr >= PHY_MAX_ADDR)
+			printf("Address out of range (max %d)\n", PHY_MAX_ADDR - 1);
 
 		mii = mdiobus_get_bus(bus);
 		if (!mii) {
@@ -317,11 +326,12 @@ static int do_miitool(int argc, char *argv[])
 		phydev = phy_device_create(mii, addr, -1);
 		ret = phy_register_device(phydev);
 		if (ret) {
-			dev_err(&mii->dev, "failed to register phy: %s\n",
-				strerror(-ret));
+			printf("failed to register phy %s: %s\n",
+				dev_name(&phydev->dev), strerror(-ret));
 			goto free_phydevname;
+		} else {
+			printf("registered phy %s\n", dev_name(&phydev->dev));
 		}
-
 		break;
 	default:
 	case MIITOOL_SHOW:
@@ -347,17 +357,14 @@ BAREBOX_CMD_HELP_TEXT("adapters use an MII to autonegotiate link speed and duple
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-v", "increase verbosity")
-BAREBOX_CMD_HELP_OPT("-s", "show PHY's status (not prioviding PHY prints status of all)")
-BAREBOX_CMD_HELP_OPT("-r", "register a dummy PHY")
-BAREBOX_CMD_HELP_OPT("-b", "dummy PHY's bus")
-BAREBOX_CMD_HELP_OPT("-a", "dummy PHY's address")
+BAREBOX_CMD_HELP_OPT("-s <devname>", "show PHY status (not providing PHY prints status of all)")
+BAREBOX_CMD_HELP_OPT("-r <busno>:<adr>", "register a PHY")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(miitool)
 	.cmd		= do_miitool,
 	BAREBOX_CMD_DESC("view media-independent interface status")
-	BAREBOX_CMD_OPTS("[-vs] PHY")
-	BAREBOX_CMD_OPTS("[-vrba]")
+	BAREBOX_CMD_OPTS("[-vsr]")
 	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 	BAREBOX_CMD_HELP(cmd_miitool_help)
 BAREBOX_CMD_END
-- 
2.7.0.rc3


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
