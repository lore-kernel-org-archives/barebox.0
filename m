Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nm2-vm0.bullet.mail.ukl.yahoo.com ([217.146.183.226])
 by merlin.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SoEKP-0007vc-KM
 for barebox@lists.infradead.org; Mon, 09 Jul 2012 13:48:43 +0000
Message-ID: <4FFAE124.8040703@yahoo.fr>
Date: Mon, 09 Jul 2012 15:48:20 +0200
From: Patrick <kpa_info@yahoo.fr>
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
Subject: Flashing automatically the default environment
To: barebox@lists.infradead.org

Dear all,

When booting a new board with barebox it detect that the nand partition 
dedicated to environment is invalid and barebox use the default config.
I would like that in this case (the first boot) the default config is 
flashed in the nand (save) command.

Any idea how to do that ?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
