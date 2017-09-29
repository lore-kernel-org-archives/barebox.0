Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx011.vodafonemail.xion.oxcs.net ([153.92.174.89])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxsUV-0001Hd-1Y
 for barebox@lists.infradead.org; Fri, 29 Sep 2017 10:25:56 +0000
Date: Fri, 29 Sep 2017 12:25:18 +0200 (CEST)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <1391726154.111771.1506680718837@mail.vodafone.de>
In-Reply-To: <2055913396.367969.1506677225722@mail.yahoo.com>
References: <1043852685.129432.1506673503086@mail.vodafone.de>
 <2055913396.367969.1506677225722@mail.yahoo.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: how to persistently save config values
To: Barebox List <barebox@lists.infradead.org>, B Gol <behnam_golds@yahoo.com>

Hi,

thanks for your answer but I think this is not really what I need.
I need a way to configure and change the variable values at runtime.
The envfs with the loadenv and saveenv commands is OK, what I'm missing
is a way to 'edit' the environment before I can save it back to the persistent
storage.

I'm thinking about adding some options to printenv to let it dump the variables
given on its command line to a file.

giorgio


> On September 29, 2017 at 11:27 AM B Gol wrote:
> 
> I just put all the variables in the source directory and then compile again.
> Look inside the following dir and its sub dirs, you'll see all the default(hard coded)
> variables inside it:
> 
> /source-path/barebox-yyyy.mm.d/defaultenv/
> 
> Simply make a text file inside a sub dir.The file name would be your variable name and
> the string inside the file would be the value for that particular variable.
> 
> On Friday, September 29, 2017 12:20 PM, Giorgio Dal Molin wrote:
> 
> Hi,
> 
> I'm working on a new project with an embedded system based on
> 
> a standard intel PC.
> 
> I already have a barebox.efi running on the system; my problem is now
> 
> how to permanently save some variables so that, on restart, they can be
> 
> automatically restored by my '/env/bin/init' script.
> 
> The variables I mean are for example 'eth0.ipaddr' or 'eth0.serveraddr'.
> 
> A solution I used in the past was a custom 'env_dump' command that generated
> 
> a config text file like:
> 
> eth0.ipaddr=10.0.0.15
> 
> eth0.serveraddr=10.0.0.1
> 
> ...
> 
> Then I saved the file with 'saveenv' and restored it back with 'loadenv'.
> 
> Is there a better way to solve this problem ? I don't like very much having to
> 
> write 'custom commands' myself.
> 
> I had a look at the state framework but it seems kinda overkill for what I need.
> 
> giorgio
> 
> _______________________________________________
> 
> barebox mailing list
> 
> barebox@lists.infradead.org
> 
> http://lists.infradead.org/mailman/listinfo/barebox
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
