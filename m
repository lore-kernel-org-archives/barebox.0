Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a02:8b8:656::164] (helo=bar.sig21.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TSm57-0003Nt-5t
 for barebox@lists.infradead.org; Mon, 29 Oct 2012 09:56:30 +0000
Date: Mon, 29 Oct 2012 10:56:04 +0100
From: Johannes Stezenbach <js@sig21.net>
Message-ID: <20121029095604.GA31639@sig21.net>
References: <20121022160341.GF21588@game.jcrosoft.org>
 <1350922048-25699-1-git-send-email-plagnioj@jcrosoft.com>
 <20121029085055.GV24458@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121029085055.GV24458@pengutronix.de>
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
Subject: Re: [PATCH 1/3] command: introduce abi version
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Oct 29, 2012 at 09:50:55AM +0100, Sascha Hauer wrote:
> On Mon, Oct 22, 2012 at 06:07:26PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > This will allow to detect incompatibility between the env abi and the current
> > barebox one
...
> > +
> > +#define COMMAND_ABI_VERSION	0
> 
> Please describe what this is. Something like:
> 
> /*
>  * This tracks incompatible changes to the barebox command interface.
>  * This number is increased when changes are introduced which will cause
>  * an older environment to no longer work. This could be:
>  *
>  * - changes in commandline options to commands
>  * - renames of commands
>  * - rename of device files
>  *
>  * If you change this value, add a explanation of the actual change to
>  * Documentation/command-abi-changes.txt
>  */

I wonder how this will work in practice.  If I use a simple
/env/bin/init script and someone makes changes to a command
which isn't used by my /env/bin/init, will it still cause
my environment to be detected as incompatible?

Maybe it would be a good idea to give the user control
over when to change COMMAND_ABI_VERSION by putting it into menuconfig?

Either way I guess it means the default environment's init script
would need to implement automatic update to not lose important  settings.

Bottom line: It's much better to not make incompatible ABI changes _ever_.


Johannes

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
