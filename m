Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvWxi-0001nn-Gd
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 16:35:12 +0000
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
 ([99.241.91.63] helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
 id 1RvWxd-0006PY-4g
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 11:35:05 -0500
Date: Thu, 9 Feb 2012 11:34:55 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1202091130540.14123@oneiric>
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
Subject: how to read GPIO values from command line?
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  i'm looking at the docs and tried the obvious but it didn't seem to
work.  in order to recognize the version of beagleboard, i can see
what happens in the u-boot code:

/*
 * Routine: get_board_revision
 * Description: Detect if we are running on a Beagle revision Ax/Bx,
 *              C1/2/3, C4 or xM. This can be done by reading
 *              the level of GPIO173, GPIO172 and GPIO171. This should
 *              result in
 *              GPIO173, GPIO172, GPIO171: 1 1 1 => Ax/Bx
 *              GPIO173, GPIO172, GPIO171: 1 1 0 => C1/2/3
 *              GPIO173, GPIO172, GPIO171: 1 0 1 => C4
 *              GPIO173, GPIO172, GPIO171: 0 0 0 => xM
 */
int get_board_revision(void)
{
        int revision;

        if (!gpio_request(171, "") &&
            !gpio_request(172, "") &&
            !gpio_request(173, "")) {

                gpio_direction_input(171);
                gpio_direction_input(172);
                gpio_direction_input(173);

                revision = gpio_get_value(173) << 2 |
                           gpio_get_value(172) << 1 |
                           gpio_get_value(171);
        } else {
                printf("Error: unable to acquire board revision GPIOs\n");
                revision = -1;
        }

        return revision;
}

  however, in the latest kernel tree, it seems things have changed
slightly:

/*
 * OMAP3 Beagle revision
 * Run time detection of Beagle revision is done by reading GPIO.
 * GPIO ID -
 *      AXBX    = GPIO173, GPIO172, GPIO171: 1 1 1
 *      C1_3    = GPIO173, GPIO172, GPIO171: 1 1 0
 *      C4      = GPIO173, GPIO172, GPIO171: 1 0 1
 *      XMA/XMB = GPIO173, GPIO172, GPIO171: 0 0 0
 *      XMC = GPIO173, GPIO172, GPIO171: 0 1 0
 */

  now that's useful since there are now allegedly different values for
xM A/B, and xM C, and i have a rev C.

  so what exactly does one do to read those values?  i tried:

barebox@Texas Instrument's Beagle:/ gpio_direction_input 171
barebox@Texas Instrument's Beagle:/ gpio_get_value 171

but what do i check?  the shell variable $?  i'm not sure what i
should do next.

rday

p.s.  my plan is to port that code to barebox, of course.  first, i
just want to see the values 0,1,0 from those gpio pins based on my
board version.

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
