Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCcNx-00031f-EB
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 20:53:26 +0000
Date: Mon, 4 Mar 2013 21:53:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130304205320.GJ1906@pengutronix.de>
References: <mailman.4.1361466001.6115.barebox@lists.infradead.org>
 <004201ce176e$0ba22460$22e66d20$@com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <004201ce176e$0ba22460$22e66d20$@com>
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
Subject: Re: New environment ?
To: George Pontis <GPontis@z9.com>
Cc: barebox@lists.infradead.org

Hi George,

On Sat, Mar 02, 2013 at 09:47:44AM -0800, George Pontis wrote:
> I'm interested to update my bsp to use the new environment. I am not finding
> any info that describe the structure or how it is intended to be configured
> and used. Can someone provide a pointer to something, or write a few
> sentences on the subject ?

I'm pretty sure I wrote something up, but I can't find it :(

So here is something new:

As with the old env the files are collected from different directories.
The basic files are in defaultenv-2/base/, the menu specific files are
in defaultenv-2/menu/. All files can be overwritten with board specific
files.

The defenv-2 has an init sequence, so all files in /env/init/ are
executed in alphabetical order during startup. Most notable in the
init sequence is /env/init/automount. Here automountpoints are created,
see http://wiki.barebox.org/doku.php?id=commands:automount.
Automount means that a fs is not directly mounted. Instead it is mounted
when the directory is first accessed. Optionally a command is executed
which can make the device to be mounted available (e.g. usb). The
automounting has the advantage that the possible mountpoints can be
configured and later a simple 'cp' will access the files.

Another thing worth noting is the 'ifup' script which can be used to
configure the network device in a Linux-like fashion. The config file
is in /env/network/eth0 and should be self explanatory.

The boot script itself expects boot entries in /env/boot/. boot <name>
will boot the corresponding entry. A single entry usually configures
the global variables (global.*) which bootm later evaluates. I orginally
did this to make it possible to configure everythin needed using
boot -d (dryrun) and later 'bootm' without further arguments could
be called. This way a boot entry could be dryrun first, then the user
can set additional variables before executing bootm. I'm thinking about
removing this extra step though.
Some extra scripts exist (/env/bin/bootargs-*) to make the setting
of the variables simpler for the /env/boot scripts.

If menu support and the menu commands are compiled in the scripts from
defaultenv-2/menu are compiled in. Typing 'exit' on the prompt (or 'm'
during autoboot timeout) will lead you to a menu which gives you access
to the most important config files and lets you boot the configured
entries.

I hope this helps for a first start.

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
