Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx.rheinmetall.ca ([207.61.105.111])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YOAjB-0007Eo-1a
 for barebox@lists.infradead.org; Wed, 18 Feb 2015 19:56:09 +0000
From: "Boulais, Marc-Andre" <maboulais@rheinmetall.ca>
Date: Wed, 18 Feb 2015 19:55:46 +0000
Message-ID: <29A2697B0516A946B1023D5E798DFCF67BACD7A2@mail-yang>
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
Subject: Specify where to save Barebox env
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Good day,
I am working on a phytec-phycore-OMAP446  system where the system boots from the SD card. On it, I have MLO+barebox.bin (v2015.02). The system boots ok.  
However, when I set NV variables (from its prompt) and then do a "saveenv", I would like the environment to be saved in NAND. Is there a way to configure Barebox to do that ? 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
