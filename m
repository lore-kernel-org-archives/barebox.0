Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PiQTV-0000Zd-Mo
	for barebox@lists.infradead.org; Thu, 27 Jan 2011 11:57:19 +0000
Date: Thu, 27 Jan 2011 12:55:31 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110127115531.GB24727@game.jcrosoft.org>
References: <20110126164348.GF1441@game.jcrosoft.org>
	<1296060364-23113-2-git-send-email-plagnioj@jcrosoft.com>
	<20110127092025.GT9041@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110127092025.GT9041@pengutronix.de>
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
Subject: Re: [PATCH 2/3] add command line boot support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On 10:20 Thu 27 Jan     , Sascha Hauer wrote:
> Hi J,
> 
> On Wed, Jan 26, 2011 at 05:46:03PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > for now just support static boot command support
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  arch/arm/lib/barebox.lds.S                |    4 +
> >  arch/blackfin/boards/ipe337/barebox.lds.S |    4 +
> >  arch/ppc/boards/pcm030/barebox.lds.S      |    4 +
> >  arch/sandbox/board/barebox.lds.S          |    4 +
> >  arch/sandbox/lib/barebox.lds.S            |    4 +
> >  arch/x86/lib/barebox.lds.S                |    9 ++-
> >  common/Kconfig                            |   11 ++
> >  common/Makefile                           |    1 +
> >  common/params.c                           |  158 +++++++++++++++++++++++++++++
> >  common/startup.c                          |   74 +++++++++++++-
> >  include/asm-generic/barebox.lds.h         |    2 +
> >  include/init.h                            |   28 +++++
> >  12 files changed, 301 insertions(+), 2 deletions(-)
> >  create mode 100644 common/params.c
> 
> Except for the inlined comments I'm generally ok with this patch.
> The more interesting part will be how the calling convention for
> barebox as a second stage loader is and how you preserve the
> registers used for commandline/atag passing during startup.
I take a look and no need to do something special we just have to put the data
in the .data section as we will supposed to be call from memmory directly
evenif we may ned to relocate our self
> 
> An idea which comes to my mind is that we could introduce a
> CONFIG_BAREBOX_SECOND_STAGE which switches to a completely different
> startup process. This startup process could then assume that
> sdram is already initialized and that we do not have to call
> board_init_lowlevel.
I get in mind to keep it maybe as we can run the lowlevel init from cache as a
peekpoke table to reconfigure the board if needed
> Another interesting thing is how will barebox behave if called
> as a second stage loader but without valid atags?
I think to use in this case the default config and let the boards to get a
callback to overwrite it
I'll try to push patch soon to show the solution
I get in mind to maybe use the device tree also not sure yet
> 
> > 
> >  
> > +config BOOT_CMDLINE
> > +	bool "barebox boot command string"
> > +	help
> 
> 	  This is useful if you intend to use barebox as a second stage bootloader
> 	  and want to pass kernel like command line parameters to barebox. Otherwise
> 	  say no here.
	as you can have built_in cmdline you can use it also as a first stage
> 
> > +
> > +config CMDLINE
> > +	string "Default barebox command string"
> > +	depends on BOOT_CMDLINE
> > +	default ""
> > +	help
> > +
> > +    This program is distributed in the hope that it will be useful,
> > +    but WITHOUT ANY WARRANTY; without even the implied warranty of
> > +    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > +    GNU General Public License for more details.
> > +
> > +    You should have received a copy of the GNU General Public License
> > +    along with this program; if not, write to the Free Software
> > +    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
> > +*/
> > +#include <malloc.h>
> > +#include <linux/kernel.h>
> > +#include <linux/string.h>
> > +#include <errno.h>
> > +#include <linux/err.h>
> > +#include <linux/ctype.h>
> > +
> > +#if 0
> > +#define DEBUGP printk
> > +#else
> > +#define DEBUGP(fmt, a...)
> > +#endif
> 
> Please use the regular 'debug' function here.
ok
> 
> > +
> > +/* This just allows us to keep track of which parameters are kmalloced. */
> > +struct kmalloced_param {
> > +	struct list_head list;
> > +	char val[];
> > +};
> > +static LIST_HEAD(kmalloced_params);
> 
> This seems unused.
yeah forget to remove it

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
