Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out2.bezeqint.net ([192.115.188.208])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1R3Oq4-0005aK-Kb
	for barebox@lists.infradead.org; Tue, 13 Sep 2011 08:59:33 +0000
Received: from remote.wellsense-tech.com (bzq-218-57-225.cablep.bezeqint.net
	[81.218.57.225])
	by out2.bezeqint.net (Postfix) with ESMTPA id 977912124DF
	for <barebox@lists.infradead.org>; Tue, 13 Sep 2011 11:59:13 +0300 (IDT)
Message-ID: <4E6F1B57.7060507@wellsense-tech.com>
Date: Tue, 13 Sep 2011 11:59:03 +0300
From: Boaz Ben-David <boaz.bd@wellsense-tech.com>
MIME-Version: 1.0
References: <4E6E0F25.7060403@wellsense-tech.com>
In-Reply-To: <4E6E0F25.7060403@wellsense-tech.com>
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
Subject: Re: bareboxenv usage
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On 09/12/11 16:54, Boaz Ben-David wrote:
> Hi
>
> I am using bareboxenv on a MLC NAND chip for reading and writing the
> barebox environment on my imx35 board.
> Up until now I have been using it with the mtdblock devices and suddenly
> I noticed I get an error while reading (-l) the env(I/O error).
> Using bareboxenv with the same partition but in the /dev/mtd form the
> read works.
> For some reason I assumed that I need to use the bareboxenv with
> mtdblock devices.
> Question is, what is the CORRECT way to use it on a nand partition?
>
> Thanks,
>
> Boaz.
>
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

I see no one answered this, maybe I need to shorten my question (:

All I am asking is: do I need to use /dev/mtdblock or /dev/mtd when 
loading and saving envs

with bareboxenv?


Thanks,

Boaz.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
