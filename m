Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ganesha.gnumonks.org ([213.95.27.120])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aW6dK-0001QD-7W
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 18:15:29 +0000
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.72)
 (envelope-from <laforge@gnumonks.org>) id 1aW6cy-000495-9M
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 19:15:04 +0100
Received: from laforge by localhost.localdomain with local (Exim 4.86)
 (envelope-from <laforge@gnumonks.org>) id 1aW6cq-0005cI-AW
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 19:14:56 +0100
Date: Wed, 17 Feb 2016 19:14:56 +0100
From: Harald Welte <laforge@gnumonks.org>
Message-ID: <20160217181456.GZ5868@nataraja>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: of_state_fixup / different path in barebox and kernel
To: barebox@lists.infradead.org

Dear List,

I have a custom board with an AM335x on it.  We used to have an I2C
EEPROM for keeping the boot state, but moved that to SPI in a subsequent
version.

The SPI EEPROM uses gpio-based chip select, which is supported by linux
kernel spi-omap2-mcspi.c.  However, it is not supported by barebox.

My "solution" was to simply use the gpio-bitbang in barebox, which also
works fine for those few bytes that need to be read, performance doesn't
matter.

Now however I can no longer boot any kernel image, as of_state_fixup
fails in

	backend_node = of_find_node_by_path_from(root, state->backend->of_path);

due to the fact that the of-path of the EEPROM is different in the
barebox device tree (/spi_gpio/m95m02@0) than in the kernel device tree
(/ocp/spi@481a0000/m95m02@0)

Is there any designated solution for this situation?

Thanks in advance,
	Harald
-- 
- Harald Welte <laforge@gnumonks.org>           http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
