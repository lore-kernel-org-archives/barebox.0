Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from plane.gmane.org ([80.91.229.3])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPfjX-0000Ao-6m
 for barebox@lists.infradead.org; Mon, 17 Mar 2014 22:10:12 +0000
Received: from list by plane.gmane.org with local (Exim 4.69)
 (envelope-from <gcbb-barebox@m.gmane.org>) id 1WPfj5-0006jH-IU
 for barebox@lists.infradead.org; Mon, 17 Mar 2014 23:09:43 +0100
Received: from static-82-85-234-51.clienti.tiscali.it ([82.85.234.51])
 by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
 id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Mon, 17 Mar 2014 23:09:43 +0100
Received: from cristiano_dealti by static-82-85-234-51.clienti.tiscali.it with
 local (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Mon, 17 Mar 2014 23:09:43 +0100
From: Cristiano De Alti <cristiano_dealti@hotmail.com>
Date: Mon, 17 Mar 2014 22:09:18 +0000 (UTC)
Message-ID: <loom.20140317T223214-735@post.gmane.org>
References: <loom.20140313T212720-896@post.gmane.org>
 <20140317063107.GB17250@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: i.MX21 ADS NAND flash bad blocks scan. Barebox vs Linux
To: barebox@lists.infradead.org

Sascha Hauer <s.hauer@...> writes:

> 
> On Thu, Mar 13, 2014 at 08:44:08PM +0000, Cristiano De Alti wrote:
> > Hi,
> >   I'm probably posting to the wrong list since this is Linux issue.
> > I'm still trying to revive this old board.
> > 
> > This board has a 64MBi Samsung NAND flash that is detected both by Barebox
> > (recent snapshot) and Linux 3.4.77.
> > 
> > The issue is that, while the bad blocks scan takes a negligible time on
> > Barebox, it takes 10 minutes to complete on Linux.
> > They both detect block 0 as a bad block. This is strange since it is
> > guaranteed to be good by the manufacturer but I've read the OOB data with
> > barebox and it's marked ad bad. I found this board in the lab and don't know
> > how it was used before.
> > 
> > Barebox code, nand_imx.c, and Linux code, mxc_nand.c, are similar but not
> > identical of course. I also think that Linux code was contributed by
> > Pengutronix so this is the reason I'm asking here.
> > 
> > I've enabled debug statements in Linux code and added my own statements.
> > As said, scan completes, everything looks OK but it is very slow.
> 
> I assume this is a 512 byte page Nand, right? In this case you shouldn't
> have any issues with bad block marker swapping.
> An issue could be that one party uses a bad block table wereas the other
> scans each time. I recommend using a bad block table for barebox and the
> kernel.
> Maybe somebody has marked block 0 as bad to see whether the ROM Code
> handles this properly.
> 
> Sascha
> I

For sure Linux scans and I was under the impression that Barebox did it too.
Is there any CONFIG in Barebox I can check to determine if it uses a bad
block table (I'm pretty sure it does not use it since I've deleted the NAND
device from Barebox and the scan always takes a short time to complete).

The NAND flash is a Samsung K9K1208Q0C with 512 bytes per page and 16 bytes
of OOB data.

The Linux code uses this function to check for operation complete:

/* This function polls the NANDFC to wait for the basic operation to
 * complete by checking the INT bit of config2 register.
 */
static void wait_op_done(struct mxc_nand_host *host, int useirq)
{
        int max_retries = 8000;

        if (useirq) {
                if (!host->check_int(host)) {
                        INIT_COMPLETION(host->op_completion);
                        host->irq_control(host, 1);
                        wait_for_completion(&host->op_completion);
                        pr_debug("@@@CDA: wait_op_done() completed");
                }
        } else {
                while (max_retries-- > 0) {
                        if (host->check_int(host))
                                break;

                        /* CDA */
                        pr_debug(".");

                        udelay(1);
                }
                if (max_retries < 0)
                        pr_debug("%s: INT not set\n", __func__);
        }
}  

Completion of short running operations is done by polling the NFC.
A "." is always printed for these operations while they should actually take
ns to complete on the NAND.

Completion of long running operations are done using the NFC interrupt.
The longest running operation (Data Transfer from Cell to Register) for a
READ command should be 10us.
If I try to use polling for this operation too, by modifying the above code,
I see about 50 '.' printed but the impression is that it takes much more
time given that the scan rate seems in the order of 5-10 pages per second.

Maybe I should try to understand how long it really takes by toggling a
GPIO. I'm not sure if the udelay function is accurate. If it is then the
bottleneck is somewhere else, maybe in the error correction or bad block
scan code.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
