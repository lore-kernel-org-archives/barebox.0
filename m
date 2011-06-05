Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QTCD0-0007ER-O9
	for barebox@lists.infradead.org; Sun, 05 Jun 2011 12:13:38 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sun, 5 Jun 2011 14:11:55 +0200
References: <4DEB6D69.5030003@wellsense-tech.com>
In-Reply-To: <4DEB6D69.5030003@wellsense-tech.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201106051411.55383.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: protecting env partitions from bad blocks
To: barebox@lists.infradead.org

Hi,

Boaz Ben-David wrote:
> I want to protect the env partition on my device from bad blocks
> (created during operation or already there out of the factory).

Maybe you mean the same, but you cannot really _protect_ them from bad blocks.

> Couldn't find any good documentation regarding this issue, so I have
> some questions:
>
> 1. Exactly what capabilities the bb devices in Barebox give me?

Handling a flash based memory in a linear manner, even if there are "holes" in 
the memory.

non-bb |---------------------|BB|------------------------------|
                           |---ESU--|
bb     |-----------------------------------------------|

Reading the "non-bb" will give you an error message, when you try to read from 
the offset the BadBlock is located. Reading the "bb" silently skips the 
BadBlock for you. By the price the usable size is smaller.
ESU is a "erase size unit" you always will lose if it contains a bad block.

> 2. I was thinking of somehow assigning the env partition larger than
> required in order to later
> handle bad blocks by moving the block currenly being used to be the
> first good block.
> Is this a good approach or maybe there is something already ready and I
> shouldn't bother because I am totally missing the point?

You should increase the partitions in "erase block size units". Recent NAND 
flashes are using 128 kiB erase size units. So, increasing by 256 kiB will 
give you two spare "erase block size units".

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-5121-206917-5128 |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
