Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from hbe.hbelightingsystems.com ([213.239.196.253])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RTYjR-0005p6-Up
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 12:48:51 +0000
Message-ID: <4ECE3D2F.5070300@erwinrol.com>
Date: Thu, 24 Nov 2011 13:48:47 +0100
From: Erwin Rol <mailinglists@erwinrol.com>
MIME-Version: 1.0
References: <1322138631-8963-1-git-send-email-jbe@pengutronix.de>
 <1322138631-8963-9-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1322138631-8963-9-git-send-email-jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 08/13] DISK: Add common partition handling for disk like
 media
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On 24-11-2011 13:43, Juergen Beisert wrote:
> This covers disk like media like SD card, CF cards, regular hard disks and also
> USB mass storage devices. Most common used partition table is still of DOS type.
> This implementation is prepared to support more partition types in the future.

Maybe a good time for me to prepare my GUID partition support for 
inclusion :-)

- Erwin


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
