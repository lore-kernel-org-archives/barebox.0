Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qa0-f49.google.com ([209.85.216.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TeThG-0003te-DS
 for barebox@lists.infradead.org; Fri, 30 Nov 2012 16:44:15 +0000
Received: by mail-qa0-f49.google.com with SMTP id r4so668244qaq.15
 for <barebox@lists.infradead.org>; Fri, 30 Nov 2012 08:44:12 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <50B8DE02.1030209@ge.com>
References: <CA+pW49qF1gN6Ty=T44MJzCXkmfwhJC0Lj72-zG+ng=mvX7VRgw@mail.gmail.com>
 <50B8DE02.1030209@ge.com>
Date: Fri, 30 Nov 2012 17:44:12 +0100
Message-ID: <CAJfOKByMy3p1c3ouVjFc+apur8kW2mqiHU8bo+Cob5cewa_J3A@mail.gmail.com>
From: Franck Jullien <franck.jullien@gmail.com>
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
Subject: Re: How to read a file in UBIFS file system from barebox
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

2012/11/30 Renaud Barbier <renaud.barbier@ge.com>:
> On 30/11/2012 14:00, Madhu koriginja wrote:
>
> Hi All,
>             I am using UBIFS file system. My kernel is placed in the file
> system (/boot/uImage). I want to read the kernel(uImage) from UBIFS file
> system at barebox to load the kernel and boot it.
> Please give me some ideas how to get this functionality.
>
> I have ported UBIFS from U-boot.
> I can send patches.
>

Sure that would be great. I was thinking to port any flash fs.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
