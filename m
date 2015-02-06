Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YJdQ6-0000ee-I3
 for barebox@lists.infradead.org; Fri, 06 Feb 2015 07:33:43 +0000
Date: Fri, 6 Feb 2015 08:33:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150206073318.GI12209@pengutronix.de>
References: <CA+nEJin3xNxtwkhEzPgcfNvP2wiuGxqhdB8cLn71LWC1Y5k-FQ@mail.gmail.com>
 <20150203085931.GI12209@pengutronix.de>
 <54D09205.4070704@atmel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <54D09205.4070704@atmel.com>
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
Subject: Re: Passing kernel arguments - SAMA5D4EK
To: Bo Shen <voice.shen@atmel.com>
Cc: barebox@lists.infradead.org

Hi,

On Tue, Feb 03, 2015 at 05:16:53PM +0800, Bo Shen wrote:
> Hi Sascha,
> 
> On 02/03/2015 04:59 PM, Sascha Hauer wrote:
> >Note that we started with trying to build a generic default environment
> >which at some point grew into a monster. We now have the 2nd version of
> >the generic default environment which is much better. Unfortunately
> >usage of this new default environment is board specific and your board
> >isn't converted yet. If you are interested I can show you the steps to
> >convert it.
> 
> I am interested in this, could you show me the steps to convert it?
> Thanks.

Here we go:

- Add "select HAVE_DEFAULT_ENVIRONMENT_NEW" to your board config
- Enable CONFIG_DEFAULT_ENVIRONMENT in the default config
- move everything that should be run during startup to one or multiple
  scripts in /env/init/. For example the at91sam9260ek has some stuff
  depending on $armlinux_architecture, that should be done in an init
  script.
- create /env/boot/* scripts several examples can be found in the tree
- Create /env/nv/* variables for the corresponding global variables that
  you wish to have. do a "find -name nv" to see what I mean.
- /env/config should normally be empty in the board code, then the
  generic one from defaultenv/defaultenv-2-base/config is used
- MTD partitions should for now be defined in /env/init/mtdparts-* or later
  in the device tree.

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
