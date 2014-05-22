Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22a.google.com ([2a00:1450:4010:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WnPBQ-0001e3-S6
 for barebox@lists.infradead.org; Thu, 22 May 2014 09:21:05 +0000
Received: by mail-la0-f42.google.com with SMTP id el20so2433379lab.29
 for <barebox@lists.infradead.org>; Thu, 22 May 2014 02:20:41 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
In-Reply-To: <20140521135101.GM5858@pengutronix.de>
References: <1400606875.26128.1.camel@mars>
 <20140521135101.GM5858@pengutronix.de>
Date: Thu, 22 May 2014 11:20:37 +0200
Message-ID: <1400750437.7832.28.camel@mars>
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
Subject: Re: [PATCH] commands: add 'findstr' to get string from file
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha

On Wed, 2014-05-21 at 15:51 +0200, Sascha Hauer wrote:
> On Tue, May 20, 2014 at 07:27:55PM +0200, Christoph Fritz wrote:
> > Command 'findstr' can be for example used to find the string
> > "MAC=1C:BA:8C:F3:82:BB" in file /dev/eeprom0 to set the
> > appropriate variable:
> > 
> >  $ findstr -o 4 -l 17 -t eth0.ethaddr MAC /dev/eeprom0
> > 
> > Usage: findstr [OPTIONS] <STRING> <FILE>
> > Find string in file and print it
> > -o <offset>     set offset of string which gets printed
> > -l <length>     set length of string which gets printed
> > -t <var>        print into variable instead of stdio
> 
> I wonder how useful such a command is. I mean normally I would
> expect a MAC address to be stored in binary format and not ASCII.

Yes, and if a user wants to set it to another value, there is variable
'ethaddr' in 'env/network/eth0' which can be changed.

The use case here I'm facing: User wants to change 'ethaddr' and store
it in eeprom instead. If the whole /dev/eeprom0 would be a
barebox-script, it could be processed, but I can't rely on.

> Matching 'MAC' (what about the '='?) seems not very robust.

From the example above, the offset is 4 and a '=' or any other char gets
bypassed.

>  What about strings with dynamic lengths?

A more robust and flexible approach I have in mind is this: Find string
xy and delimiter z in file and optionally execute what is in between as
a command. 

> If the command is primarily intended for the MAC address then maybe
> a more dedicated command or a piece of code called from board code
> is more robust.

That's what I'm already doing here, but want to get a more general
solution for all kinds of settings.

>  If the command is intended as a general
> eeprom-variable-store then I think it's not flexible enough.

What do you think about the more robust approach from above?

 Thanks
  -- Christoph


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
