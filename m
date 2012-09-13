Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo5.mail-out.ovh.net ([178.32.116.78]
 helo=mo5.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TCD8C-0005w3-Pk
 for barebox@lists.infradead.org; Thu, 13 Sep 2012 17:23:14 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id DBB32FFA7CE
 for <barebox@lists.infradead.org>; Thu, 13 Sep 2012 19:24:44 +0200 (CEST)
Date: Thu, 13 Sep 2012 19:16:32 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120913171632.GA20834@game.jcrosoft.org>
References: <1347358767-1180-1-git-send-email-plagnioj@jcrosoft.com>
 <1347358767-1180-7-git-send-email-plagnioj@jcrosoft.com>
 <20120912072035.GG6180@pengutronix.de>
 <20120912090128.GO31207@game.jcrosoft.org>
 <20120912094448.GO6180@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120912094448.GO6180@pengutronix.de>
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
Subject: Re: [PATCH 7/7] defaultenv-2: add boot sequence
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:44 Wed 12 Sep     , Sascha Hauer wrote:
> On Wed, Sep 12, 2012 at 11:01:28AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 09:20 Wed 12 Sep     , Sascha Hauer wrote:
> > > On Tue, Sep 11, 2012 at 12:19:27PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > Boot will boot run sequentially the script in /env/boot.d
> > > > 
> > > > diff --git a/defaultenv-2/base/bin/boot b/defaultenv-2/base/bin/boot
> > > > index 103eb87..68e9e89 100644
> > > > --- a/defaultenv-2/base/bin/boot
> > > > +++ b/defaultenv-2/base/bin/boot
> > > > @@ -2,6 +2,8 @@
> > > >  
> > > >  verbose=
> > > >  dryrun=
> > > > +# ensure sequence is init at something
> > > > +sequence=t
> > > 
> > > This looks unnecessary.
> > I beleive it too but 
> > no as you run boot again the sequence keep the previous set I set it after
> > trial
> 
> Then you must have exported it from the command line before calling the
> script. Initializing variables is a good idea, but you should set it to
> be empty.
> 
> > > 
> > > >  
> > > >  usage="
> > > >  $0 [OPTIONS] [source]\n
> > > > @@ -10,11 +12,27 @@ $0 [OPTIONS] [source]\n
> > > >   -l  list boot sources\n
> > > >   -h  help"
> > > >  
> > > > +. /env/data/ansi-colors
> > > > +
> > > >  for i in /env/boot/*; do
> > > >  	basename $i s
> > > >  	sources="$sources$s "
> > > >  done
> > > >  
> > > > +if [ -d /env/boot.d ]; then
> > > > +	sources="$sources\n\nboot sequence:"
> > > > +	for i in /env/boot.d/*; do
> > > > +		readlink -f $i s
> > > > +		basename $s link
> > > > +		basename $i s
> > > > +		sources="$sources\n ${YELLOW}${s}${NC} -> ${CYAN}${link}${NC}"
> > > > +	done
> > > > +else
> > > > +	sequence=n
> > > > +	sources="$sources\n\nboot sequence:\nnone"
> > > > +	echo "${RED}WARNING: boot sequence: none${NC}"
> 
> -e missing here.
> 
> > > > +fi
> > > > +
> > > >  while getopt "vdhl" opt; do
> > > >  	if [ ${opt} = v ]; then
> > > >  		if [ -n "$verbose" ]; then
> > > > @@ -23,7 +41,7 @@ while getopt "vdhl" opt; do
> > > >  			verbose="-v"
> > > >  		fi
> > > >  	elif [ ${opt} = d ]; then
> > > > -		dryrun=1
> > > > +		dryrun="-d"
> > > >  	elif [ ${opt} = l ]; then
> > > >  		echo -e "boot sources:\n$sources"
> > > >  		exit 0
> > > > @@ -37,18 +55,39 @@ done
> > > >  global -r linux.bootargs.dyn.
> > > >  global -r bootm.
> > > >  
> > > > -if [ $# = 0 ]; then
> > > > -	scr="$global.boot.default"
> > > > +if [ $# = 0 -a "x$sequence" = "xt" ]; then
> > > > +	sequence=y
> > > >  else
> > > >  	scr="$1"
> > > >  fi
> > > 
> > > You could merge the 'if [ -d /env/boot.d ]' above with this if/else. The
> > > result would be easier to read IMO.
> > > Also you don't seem to catch the case when no /env/boot.d/* exist and
> > > nothing is given on the command line.
> > the idea it to check bot /env/boot.d and /env/boot as you may want to boot
> > something no in the boot sequence but for test as example
> 
> > > 
> > > >  
> > > > +if [ "x$sequence" = "xy" ]; then
> > > 
> > > This x quirk is not necessary anymore. Do if [ "$sequence" = y ]
> > > instead.
> > > 
> > > > +	if [ ! -d /env/boot.d ]; then
> > > > +		echo -e "${GREEN}boot sequence ${RED}none${NC}"
> > > > +		exit 1
> > > > +	fi
> > > > +	echo -e "${GREEN}Start boot sequence${NC}"
> > > > +	for i in /env/boot.d/*; do
> > > > +		readlink -f $i s
> > > > +		basename $s link
> > > > +		basename $i s
> > > > +		msg="${GREEN}boot${NC} ${YELLOW}${s}${NC} -> ${CYAN}${link}${NC}"
> > > > +		echo -e "${msg}"
> > > > +		boot $dryrun $s
> > > > +		echo -e "${msg} ${RED}failled${NC}"
> > > > +		ret=$?
> > > > +	done
> > > > +	echo -e "${GREEN}boot sequence ${RED}failled${NC}"
> > > 
> > > s/failled/failed/
> > > 
> > > > +	exit $ret
> > > > +fi
> > > > +
> > > >  if [ -n "$scr" ]; then
> > > > -	if [ ! -f /env/boot/$scr ]; then
> > > > -		echo -e "/env/boot/$scr does not exist.Valid choices:\n$sources"
> > > > +	if [ ! -f /env/boot.d/$scr -a ! -f /env/boot/$scr ]; then
> 
> This check does not work as expected, probably a bug in the test
> command.
> 
> Check out this:
> 
> 
> #!/bin/sh
> 
> verbose=
> dryrun=
> 
> usage="
> $0 [OPTIONS] [source]\n
>  -v  verbose\n
>  -d  dryrun\n
>  -l  list boot sources\n
>  -h  help"
> 
> . /env/data/ansi-colors
> 
> for i in /env/boot/*; do
> 	basename $i s
> 	sources="$sources$s "
> done
> 
> if [ -d /env/boot.d ]; then
> 	sources="$sources\n\nboot sequence:"
> 	for i in /env/boot.d/*; do
> 		readlink -f $i s
> 		basename $s link
> 		basename $i s
> 		sources="$sources\n ${YELLOW}${s}${NC} -> ${CYAN}${link}${NC}"
> 	done
> 	sequence=y
> else
> 	sources="$sources\n\nboot sequence:\nnone"
> 	echo -e "${RED}WARNING: boot sequence: none${NC}"
> 	sequence=n
> fi
> 
> while getopt "vdhl" opt; do
> 	if [ ${opt} = v ]; then
> 		if [ -n "$verbose" ]; then
> 			verbose="-v -v"
> 		else
> 			verbose="-v"
> 		fi
> 	elif [ ${opt} = d ]; then
> 		dryrun="-d"
> 	elif [ ${opt} = l ]; then
> 		echo -e "boot sources:\n$sources"
> 		exit 0
> 	elif [ ${opt} = h ]; then
> 		echo -e "$usage"
> 		exit 0
> 	fi
> done
> 
> # clear linux.bootargs.dyn.* and bootm.*
> global -r linux.bootargs.dyn.
> global -r bootm.
> 
> if [ $# != 0 ]; then
> 	sequence=n
> fi
> 
> if [ "$sequence" = y ]; then
> 	if [ ! -d /env/boot.d ]; then
> 		echo -e "${GREEN}boot sequence ${RED}none${NC}"
> 		exit 1
> 	fi
> 	echo -e "${GREEN}Start boot sequence${NC}"
> 	for i in /env/boot.d/*; do
> 		readlink -f $i s
> 		basename $s link
> 		basename $i s
> 		msg="${GREEN}boot${NC} ${YELLOW}${s}${NC} -> ${CYAN}${link}${NC}"
> 		echo -e "${msg}"
> 		boot $dryrun $s
> 		echo -e "${msg} ${RED}failled${NC}"
> 		ret=$?
> 	done
> 	echo -e "${GREEN}boot sequence ${RED}failed${NC}"
> 	exit $ret
> else
> 	file=$1
> 	scr=
> 	echo -e "${GREEN}booting ${YELLOW}$file${NC}"
> 	[ -f /env/boot.d/$file ] && scr=/env/boot.d/$file
> 	[ -f /env/boot/$file ] && scr=/env/boot/$file
> 
> 	if [ -z "$scr" ]; then
> 		echo -e "/env/boot/$file or /env/boot.d/$file does not exist. Valid choices:\n$sources"
> 		exit
> 	fi
> 	/env/boot/$scr
	$src

and it work

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
