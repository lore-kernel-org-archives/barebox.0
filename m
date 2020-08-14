Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-mw2nam12on2105.outbound.protection.outlook.com
 ([40.107.244.105] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6a5N-0003sd-HS
 for barebox@lists.infradead.org; Fri, 14 Aug 2020 13:49:34 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
Date: Fri, 14 Aug 2020 13:49:25 +0000
Message-ID: <MN2PR16MB3135C2AADD985DE82E3E787591400@MN2PR16MB3135.namprd16.prod.outlook.com>
Content-Language: en-US
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
Subject: barebox:ubi attach time
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Just to see if somebody has the following problem:

We have PPC or ARM platforms with a NOR containing barebox and a UBI volume with an ITB image.
The File system is on NAND.

If I boot the system, ubiattach and mount the NOR volume, then detach. On reboot it takes more time for barebox to ubiattach  the NOR boot volume. I have noticed that with on 2019.07 barebox branch and 2020.03. 

I ubidetach the volume from barebox then boot time is restored.

I will be off for 2 weeks I will not be able answer until 1st of September.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
