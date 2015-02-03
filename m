Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx.rheinmetall.ca ([207.61.105.111])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YIgVG-0001ce-GH
 for barebox@lists.infradead.org; Tue, 03 Feb 2015 16:39:07 +0000
From: "Boulais, Marc-Andre" <maboulais@rheinmetall.ca>
Date: Tue, 3 Feb 2015 16:38:42 +0000
Message-ID: <29A2697B0516A946B1023D5E798DFCF67BAB6E85@mail-ying>
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
Subject: saveenv & erase with bad blocks present
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,
I have flashed Barebox-2015.02.0 on my omap4 setup (using the Barebox update command) and I am now trying to modify the environment from the Barebox prompt. I have modified the env/config file and I would like to save my changes to NAND. 

For this task, I call the "saveenv" command and I get this result:

barebox@Phytec phyCORE-OMAP4460:/ saveenv
saving environment
saveenv: No space left on device

The "devinfo" command indicates to me that the /dev/nand0.bareboxenv partition is 128 Kb. 
Just to be sure, I erase it and get the following error:

barebox@Phytec phyCORE-OMAP4460:/ erase /dev/nand0.bareboxenv.bb
nand: nand_erase_nand: attempt to erase a bad block at page 0x00000140
erase: I/O error

So I guess I am a bit confused here. 
1) Is "saveenv" the right command to save my changes to the environment ?
2) How can I erase a NAND partition that has bad blocks ?
3) Can bad blocks be marked by software or are they all marked by the manufacturer ?

Many thanks,


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
