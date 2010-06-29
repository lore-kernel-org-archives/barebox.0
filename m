Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OTdhS-0006Gs-Hg
	for barebox@lists.infradead.org; Tue, 29 Jun 2010 16:30:19 +0000
Message-ID: <4C2A1F94.8030808@eukrea.com>
Date: Tue, 29 Jun 2010 18:30:12 +0200
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Pending patches for 2010.07
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

the following patches are needed to get good support of cpuimx35 for 
2010.07 :

[PATCH 1/2] imx-ipu-fb: Add board specific hook to enable display
http://lists.infradead.org/pipermail/barebox/2010-June/001068.html
[PATCH 2/2] imx-ipu-fb: do not enable framebuffer on startup
http://lists.infradead.org/pipermail/barebox/2010-June/001069.html

[PATCH] eukrea_cpuimx35: boot update
http://lists.infradead.org/pipermail/barebox/2010-June/001071.html

[PATCH] eukrea_cpuimx35: better usage of LCD enable pins
http://lists.infradead.org/pipermail/barebox/2010-June/001095.html
(for this last one, please take the patch sent today, I forget to put v2 
in the subject)

Is there something to rework in theses patches to get them into 
thursday's release (I can do it tomorrow if necessary) ?

Thanks
Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
