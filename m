Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMRXG-0002X5-PA
	for barebox@lists.infradead.org; Sun, 20 Dec 2009 19:33:50 +0000
Received: from cpe002129687b04-cm001225dbafb6.cpe.net.cable.rogers.com
	([99.235.241.187] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1NMRXF-0007iz-KO
	for barebox@lists.infradead.org; Sun, 20 Dec 2009 14:33:45 -0500
Date: Sun, 20 Dec 2009 14:33:11 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.00.0912201429550.27643@localhost>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: possible memory leak in commands/nand.c?
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  once again, perhaps i'm just misreading this but consider this code
from commands/nand.c, noting the two early calls to asprintf():

===== begin =====

        bb = xzalloc(sizeof(*bb));
        bb->devname = asprintf("/dev/%s", basename(path));
        if (name)
                bb->cdev.name = strdup(name);
        else
                bb->cdev.name = asprintf("%s.bb", basename(path));

        ret = stat(bb->devname, &s);
        if (ret)
                goto free_out;

        bb->raw_size = s.st_size;

        bb->fd = open(bb->devname, O_RDWR);
        if (bb->fd < 0) {
                ret = -ENODEV;
                goto free_out;
        }

        ret = ioctl(bb->fd, MEMGETINFO, &bb->info);
        if (ret)
                goto free_out;

        nand_bb_calc_size(bb);
        bb->cdev.ops = &nand_bb_ops;
        bb->cdev.priv = bb;

        devfs_create(&bb->cdev);

        return 0;

free_out:
        free(bb);
        return ret;

===== end =====

  if something in the latter part of that code fails and control jumps
to the label "free_out", won't this code fail to free() the memory
allocated in the two asprintf() calls?  isn't the programmer
explicitly required to free memory allocated with asprintf() or
vasprintf() calls?

rday
--

========================================================================
Robert P. J. Day                               Waterloo, Ontario, CANADA

            Linux Consulting, Training and Kernel Pedantry.

Web page:                                          http://crashcourse.ca
Twitter:                                       http://twitter.com/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
