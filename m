Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1cw5Ml-0001ig-I0
 for barebox@lists.infradead.org; Thu, 06 Apr 2017 11:14:18 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 2CAF3A003C9
 for <barebox@lists.infradead.org>; Thu,  6 Apr 2017 13:14:23 +0200 (CEST)
References: <ea78b774-b055-9b43-4b18-03eeabd2e06b@phytec.de>
 <20170406070625.xpvqhrg4dmdjkf3p@pengutronix.de>
From: Daniel Schultz <d.schultz@phytec.de>
Message-ID: <84941f69-f50b-ee7d-8b36-3547bc0fb2dd@phytec.de>
Date: Thu, 6 Apr 2017 13:13:45 +0200
MIME-Version: 1.0
In-Reply-To: <20170406070625.xpvqhrg4dmdjkf3p@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Directory mirroring
To: barebox@lists.infradead.org

Hi Sascha,

Am 06.04.2017 um 09:06 schrieb Sascha Hauer:
> Hi Daniel,
>
> On Tue, Apr 04, 2017 at 12:11:09PM +0200, Daniel Schultz wrote:
>> Hi everyone,
>>
>> my boot partition is mounted to /boot/. Now, I want to make it accessibl=
e in
>> /mnt/ as mmc or emmc, depending to the bootsource. Sadly, ln can only cr=
eate
>> symlinks for files and two mounts for one device seems not to work.
>>
>> Are there other ways to mirror a file system?
>
> Not that I know of. You could implement directory links, but why do you
> want to have it accessible under /mnt in the first place?
>
I think it would be good, if all mountable boot devices are accessible =

in /mnt, but the boot source still remains at /boot.
1) All boot scripts can use /mnt
2) Barebox environment always lies in /boot

-- =

Mit freundlichen Gr=FC=DFen,
With best regards,
   Daniel Schultz

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
