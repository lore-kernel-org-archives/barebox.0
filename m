Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a6EDW-00037M-Sw
 for barebox@lists.infradead.org; Tue, 08 Dec 2015 09:05:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Dec 2015 10:05:39 +0100
Message-Id: <1449565539-29374-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1449565539-29374-1-git-send-email-s.hauer@pengutronix.de>
References: <1449565539-29374-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] misc: Add PT100 temperature sensor support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/misc/Kconfig  |   5 ++
 drivers/misc/Makefile |   1 +
 drivers/misc/pt100.c  | 145 ++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 151 insertions(+)
 create mode 100644 drivers/misc/pt100.c

diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index 8d44a5c..32e8bea 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -32,4 +32,9 @@ config MCP342X
 	depends on I2C
 	depends on IODEVICE
 
+
+config PT100
+	tristate "PT100 driver"
+	depends on IODEVICE
+
 endmenu
diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
index 6680334..01b5597 100644
--- a/drivers/misc/Makefile
+++ b/drivers/misc/Makefile
@@ -9,3 +9,4 @@ obj-$(CONFIG_IODEVICE)		+= iodevice.o
 obj-$(CONFIG_LM75)		+= lm75.o
 obj-$(CONFIG_IODEVICE)		+= iodevice.o
 obj-$(CONFIG_MCP342X)		+= mcp342x.o
+obj-$(CONFIG_PT100)		+= pt100.o
diff --git a/drivers/misc/pt100.c b/drivers/misc/pt100.c
new file mode 100644
index 0000000..f9d8c6a
--- /dev/null
+++ b/drivers/misc/pt100.c
@@ -0,0 +1,145 @@
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <iodevice.h>
+
+unsigned int pt100[] = {
+	18950, 19380, 19820, 20250, 20680, 21110, 21540, 21970, 22400, 22830, /* -200 - -191 */
+	23250, 23680, 24110, 24540, 24970, 25390, 25820, 26240, 26670, 27100, /* -190 - -181 */
+	27520, 27950, 28370, 28800, 29220, 29640, 30070, 30490, 30910, 31340, /* -180 - -171 */
+	31760, 32180, 32600, 33020, 33440, 33860, 34280, 34700, 35120, 35540, /* -170 - -161 */
+	35960, 36380, 36800, 37220, 37640, 38050, 38470, 38890, 39310, 39720, /* -160 - -151 */
+	40140, 40560, 40970, 41390, 41800, 42220, 42630, 43050, 43460, 43880, /* -150 - -141 */
+	44290, 44700, 45120, 45530, 45940, 46360, 46770, 47180, 47590, 48000, /* -140 - -131 */
+	48420, 48830, 49240, 49650, 50060, 50470, 50880, 51290, 51700, 52110, /* -130 - -121 */
+	52520, 52930, 53340, 53750, 54150, 54560, 54970, 55380, 55790, 56190, /* -120 - -111 */
+	56600, 57010, 57410, 57820, 58230, 58630, 59040, 59440, 59850, 60260, /* -110 - -101 */
+	60660, 61070, 61470, 61880, 62280, 62680, 63090, 63490, 63900, 64300, /* -100 - -91 */
+	64700, 65110, 65510, 65910, 66310, 66720, 67120, 67520, 67920, 68330, /* -90 - -81 */
+	68730, 69130, 69530, 69930, 70330, 70730, 71130, 71530, 71930, 72330, /* -80 - -71 */
+	72730, 73130, 73530, 73930, 74330, 74730, 75130, 75530, 75930, 76330, /* -70 - -61 */
+	76730, 77120, 77520, 77920, 78320, 78720, 79110, 79510, 79910, 80310, /* -60 - -51 */
+	80700, 81100, 81500, 81890, 82290, 82690, 83080, 83480, 83870, 84270, /* -50 - -41 */
+	84670, 85060, 85460, 85850, 86250, 86640, 87040, 87430, 87830, 88220, /* -40 - -31 */
+	88620, 89010, 89400, 89800, 90190, 90590, 90980, 91370, 91770, 92160, /* -30 - -21 */
+	92550, 92950, 93340, 93730, 94120, 94520, 94910, 95300, 95690, 96090, /* -20 - -11 */
+	96480, 96870, 97260, 97650, 98040, 98440, 98830, 99220, 99610, 100000, /* -10 - -1 */
+	100000, 100390, 100780, 101170, 101560, 101950, 102340, 102730, 103120, 103510, /* 0 - 9 */
+	103900, 104290, 104680, 105070, 105460, 105850, 106240, 106630, 107020, 107400, /* 10 - 19 */
+	107790, 108180, 108570, 108960, 109350, 109730, 110120, 110510, 110900, 111290, /* 20 - 29 */
+	111670, 112060, 112450, 112830, 113220, 113610, 114000, 114380, 114770, 115150, /* 30 - 39 */
+	115540, 115930, 116310, 116700, 117080, 117470, 117860, 118240, 118630, 119010, /* 40 - 49 */
+	119400, 119780, 120170, 120550, 120940, 121320, 121710, 122090, 122470, 122860, /* 50 - 59 */
+	123240, 123630, 124010, 124390, 124780, 125160, 125540, 125930, 126310, 126690, /* 60 - 69 */
+	127080, 127460, 127840, 128220, 128610, 128990, 129370, 129750, 130130, 130520, /* 70 - 79 */
+	130900, 131280, 131660, 132040, 132420, 132800, 133180, 133570, 133950, 134330, /* 80 - 89 */
+	134710, 135090, 135470, 135850, 136230, 136610, 136990, 137370, 137750, 138130, /* 90 - 99 */
+	138510, 138880, 139260, 139640, 140020, 140400, 140780, 141160, 141540, 141910, /* 100 - 109 */
+	142290, 142670, 143050, 143430, 143800, 144180, 144560, 144940, 145310, 145690, /* 110 - 119 */
+	146070, 146440, 146820, 147200, 147570, 147950, 148330, 148700, 149080, 149460, /* 120 - 129 */
+	149830, 150210, 150580, 150960, 151330, 151710, 152080, 152460, 152830, 153210, /* 130 - 139 */
+	153580, 153960, 154330, 154710, 155080, 155460, 155830, 156200, 156580, 156950, /* 140 - 149 */
+	157330, 157700, 158070, 158450, 158820, 159190, 159560, 159940, 160310, 160680, /* 150 - 159 */
+	161050, 161430, 161800, 162170, 162540, 162910, 163290, 163660, 164030, 164400, /* 160 - 169 */
+	164770, 165140, 165510, 165890, 166260, 166630, 167000, 167370, 167740, 168110, /* 170 - 179 */
+	168480, 168850, 169220, 169590, 169960, 170330, 170700, 171070, 171430, 171800, /* 180 - 189 */
+	172170, 172540, 172910, 173280, 173650, 174020, 174380, 174750, 175120, 175490, /* 190 - 199 */
+	175860, 176220, 176590, 176960, 177330, 177690, 178060, 178430, 178790, 179160, /* 200 - 209 */
+	179530, 179890, 180260, 180630, 180990, 181360, 181720, 182090, 182460, 182820, /* 210 - 219 */
+	183190, 183550, 183920, 184280, 184650, 185010, 185380, 185740, 186110, 186470, /* 220 - 229 */
+	186840, 187200, 187560, 187930, 188290, 188660, 189020, 189380, 189750, 190110, /* 230 - 239 */
+	190470, 190840, 191200, 191560, 191920, 192290, 192650, 193010, 193370, 193740, /* 240 - 249 */
+	194100, 194460, 194820, 195180, 195550, 195910, 196270, 196630, 196990, 197350, /* 250 - 259 */
+	197710, 198070, 198430, 198790, 199150, 199510, 199870, 200230, 200590, 200950, /* 260 - 269 */
+	201310, 201670, 202030, 202390, 202750, 203110, 203470, 203830, 204190, 204550, /* 270 - 279 */
+	204900, 205260, 205620, 205980, 206340, 206700, 207050, 207410, 207770, 208130, /* 280 - 289 */
+	208480, 208840, 209200, 209560, 209910, 210270, 210630, 210980, 211340, 211700, /* 290 - 299 */
+	212050, 212410, 212760, 213120, 213480, 213830, 214190, 214540, 214900, 215250, /* 300 - 309 */
+	215610, 215960, 216320, 216670, 217030, 217380, 217740, 218090, 218440, 218800, /* 310 - 319 */
+	219150, 219510, 219860, 220210, 220570, 220920, 221270, 221630, 221980, 222330, /* 320 - 329 */
+	222680, 223040, 223390, 223740, 224090, 224450, 224800, 225150, 225500, 225850, /* 330 - 339 */
+	226210, 226560, 226910, 227260, 227610, 227960, 228310, 228660, 229020, 229370, /* 340 - 349 */
+};
+
+struct pt100_priv {
+	struct iodevice iodev;
+	struct iochannel iochan;
+	struct iochannel *input;
+};
+
+static int pt100_get_value(struct iochannel *iochan, int *value)
+{
+	struct pt100_priv *priv = container_of(iochan, struct pt100_priv, iochan);
+	int U_Rx_uV, Rx_mOhm, i, ret;
+
+	ret = iochannel_get_value(priv->input, &U_Rx_uV);
+
+	if (U_Rx_uV > 460000) {
+		dev_err(priv->iodev.hwdev, "Input voltage too high. Sensor broken?");
+		return -EIO;
+	}
+
+	if (U_Rx_uV < 5000) {
+		dev_err(priv->iodev.hwdev, "Input voltage too low. Sensor short circuited?");
+		return -EIO;
+	}
+
+	Rx_mOhm = U_Rx_uV * 7800 / (2048000 - U_Rx_uV) * 1000;
+
+	/* Out of range for PT100. Assume PT1000 */
+	if (Rx_mOhm > 229370)
+		Rx_mOhm /= 10;
+
+	for (i = 0; i < ARRAY_SIZE(pt100) - 1; i++) {
+		if (Rx_mOhm >= pt100[i] && Rx_mOhm < pt100[i + 1]) {
+			*value = i - 200;
+			break;
+		}
+	}
+
+	return 0;
+}
+
+static int pt100_probe(struct device_d *dev)
+{
+	struct pt100_priv *priv;
+	struct iochannel *iochan;
+	int ret;
+
+	if (!dev->device_node)
+		return -EINVAL;
+
+	iochan = iochannel_get(dev, 0);
+	if (!iochan)
+		return -ENOENT;
+
+	priv = xzalloc(sizeof(*priv));
+
+	priv->input = iochan;
+
+	priv->iodev.num_channels = 1;
+	priv->iodev.hwdev = dev;
+	priv->iodev.read = pt100_get_value;
+	priv->iodev.channels = xmalloc(sizeof(void *));
+	priv->iodev.channels[0] = &priv->iochan;
+	priv->iochan.unit = "C";
+
+	ret = iodevice_register(&priv->iodev);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id pt100_dt_ids[] = {
+	{
+		.compatible = "zuehlke,pt100",
+	},
+};
+
+static struct driver_d pt100_driver = {
+	.name   = "pt100",
+	.probe  = pt100_probe,
+	.of_compatible = DRV_OF_COMPAT(pt100_dt_ids),
+};
+device_platform_driver(pt100_driver);
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
