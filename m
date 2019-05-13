Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCWN-000257-7Y
 for barebox@lists.infradead.org; Mon, 13 May 2019 15:05:45 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=a3f-osx.local)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <a.fatoum@pengutronix.de>) id 1hQCWL-0002gP-NY
 for barebox@lists.infradead.org; Mon, 13 May 2019 17:05:41 +0200
References: <CA+T6rvHH7Nd+xTAch5tQqJ6Y5tKKWHcfGjGuDp9BYJEjOvrxBA@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <bafb7600-4351-2c80-d78f-35d59ae559ba@pengutronix.de>
Date: Mon, 13 May 2019 17:05:39 +0200
MIME-Version: 1.0
In-Reply-To: <CA+T6rvHH7Nd+xTAch5tQqJ6Y5tKKWHcfGjGuDp9BYJEjOvrxBA@mail.gmail.com>
Content-Language: en-US
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
Subject: Re: distclean removing LICENSES .gitignores
To: barebox@lists.infradead.org

Hello Geordan,

On 13/5/19 00:17, Geordan Neukum wrote:
> When on the master branch, I noticed that running a "make distclean"
> will remove:
> 
>     - LICENSES/exceptions/.gitignore
> 
>     - LICENSES/other/.gitignore
> 
> 
> It looks like this is due to matching the pattern '-o size 0' in the
> top-level barebox makefile under the distclean target.
> 
> Is this the desired behavior?

Nope, this behavior isn't desired. I added the files, to have git
index the directories. IIRC, otherwise kernel checkpatch.pl laments their
absence. Maybe we should add a comment describing the purpose and then
these files aren't totally empty?

> If not, I can go ahead and submit a
> patch that cleans up that target.

Please go ahead.

Cheers
Ahmad

> 
> Thanks,
> Geordan
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
