Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-db8eur05on2127.outbound.protection.outlook.com
 ([40.107.20.127] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5lJt-0001Da-O4
 for barebox@lists.infradead.org; Wed, 12 Aug 2020 07:37:11 +0000
From: "Koelle, Holger" <Holger.Koelle@allegion.com>
Date: Wed, 12 Aug 2020 07:36:58 +0000
Message-ID: <AM0PR01MB4467F624E0FEFF24256BA6838F420@AM0PR01MB4467.eurprd01.prod.exchangelabs.com>
Content-Language: de-DE
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Enable Display/Splash on Phycore am335x with barebox 2020.01.0
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi everybody,

This week i've tried to enable our Display (which working without problems =
in Linuxkernel 4.19.94) in Barebox without success.

I've patched the Devicetree similar to am335x-evm.dts with our display timi=
ngs and the other values. But I got no fb0 device or a matching driver for =
the panel/gpu.
In the drivers section I can't find any driver which matching tilcdc and am=
335x-tilcdc like described in the barebox documentation.

Of_dump shows that the panel is there, but drvinfo says there is no driver.=
I've tried to use the simple-panel driver but without success...


So my Question :  Is it possible to enable the drm (gpu) unit in Barebox 20=
20.01.0 at the am335x phycore board or is it not supported?


Regards,

H.K=F6lle

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
