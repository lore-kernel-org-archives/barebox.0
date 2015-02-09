Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YKich-00026x-I3
 for barebox@lists.infradead.org; Mon, 09 Feb 2015 07:19:12 +0000
Date: Mon, 9 Feb 2015 08:18:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150209071849.GR12209@pengutronix.de>
References: <29A2697B0516A946B1023D5E798DFCF67BAB6E85@mail-ying>
 <20150203201134.GQ12209@pengutronix.de>
 <29A2697B0516A946B1023D5E798DFCF67BAB6F45@mail-ying>
 <20150205101645.GB12209@pengutronix.de>
 <29A2697B0516A946B1023D5E798DFCF67BAB71AD@mail-ying>
 <20150205212335.GF12209@pengutronix.de>
 <29A2697B0516A946B1023D5E798DFCF67BAB72A5@mail-ying>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <29A2697B0516A946B1023D5E798DFCF67BAB72A5@mail-ying>
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
Subject: Re: saveenv & erase with bad blocks present
To: "Boulais, Marc-Andre" <maboulais@rheinmetall.ca>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Fri, Feb 06, 2015 at 05:03:59PM +0000, Boulais, Marc-Andre wrote:
> Ok, I did erase the nand0.bareboxenv partition and after a reset, partition size for the env looks good: 
> barebox@Phytec phyCORE-OMAP4460:/ ls /dev/nand0.bareboxenv* -l
> crw-------     131072 /dev/nand0.bareboxenv.bb   
> crw-------     131072 /dev/nand0.bareboxenv 
> barebox@Phytec phyCORE-OMAP4460:/ loadenv -d -s
> loading environment from defaultenv
> barebox@Phytec phyCORE-OMAP4460:/ saveenv
> saving environment
> 
> So I can now save the environment without errors. But if I edit the config file and then do "saveenv" and then I reset, my changes are not there anymore as if the saveenv didn't work.
> 
> Furthermore, I have this message " wrong crc on env superblock" that appears  in the boot output...
> What do you think ?

I'll try to reproduce that tomorrow.

Just to be sure: You applied the patches I posted to the list in the
meantime. Is the barebox version flashed on your board the version with
the patches applied or did you only start the fixed version second
stage?

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
