Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo1.mail-out.ovh.net ([188.165.38.232]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TSrs8-0002Cp-JB
 for barebox@lists.infradead.org; Mon, 29 Oct 2012 16:07:29 +0000
Received: from mail435.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 9945D10041EE
 for <barebox@lists.infradead.org>; Mon, 29 Oct 2012 17:17:44 +0100 (CET)
Date: Mon, 29 Oct 2012 17:05:13 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121029160513.GA29599@game.jcrosoft.org>
References: <20121022160341.GF21588@game.jcrosoft.org>
 <1350922048-25699-1-git-send-email-plagnioj@jcrosoft.com>
 <20121029085055.GV24458@pengutronix.de>
 <20121029095604.GA31639@sig21.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121029095604.GA31639@sig21.net>
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
To: Johannes Stezenbach <js@sig21.net>
Cc: barebox@lists.infradead.org

On 10:56 Mon 29 Oct     , Johannes Stezenbach wrote:
> On Mon, Oct 29, 2012 at 09:50:55AM +0100, Sascha Hauer wrote:
> > On Mon, Oct 22, 2012 at 06:07:26PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > This will allow to detect incompatibility between the env abi and the current
> > > barebox one
> ...
> > > +
> > > +#define COMMAND_ABI_VERSION	0
> > 
> > Please describe what this is. Something like:
> > 
> > /*
> >  * This tracks incompatible changes to the barebox command interface.
> >  * This number is increased when changes are introduced which will cause
> >  * an older environment to no longer work. This could be:
> >  *
> >  * - changes in commandline options to commands
> >  * - renames of commands
> >  * - rename of device files
> >  *
> >  * If you change this value, add a explanation of the actual change to
> >  * Documentation/command-abi-changes.txt
> >  */
> 
> I wonder how this will work in practice.  If I use a simple
> /env/bin/init script and someone makes changes to a command
> which isn't used by my /env/bin/init, will it still cause
> my environment to be detected as incompatible?
> 
> Maybe it would be a good idea to give the user control
> over when to change COMMAND_ABI_VERSION by putting it into menuconfig?
> 
> Either way I guess it means the default environment's init script
> would need to implement automatic update to not lose important  settings.
here you loose nothing we just load defaulenv then you load the old one if you
one the code does not save the defaultenv automatlically
> 
> Bottom line: It's much better to not make incompatible ABI changes _ever_.
I disagree here sometimes we do need as the ABI is really not convinian or
POSIX or like this linux one

Best Regrds.
J.
> 
> 
> Johannes

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
